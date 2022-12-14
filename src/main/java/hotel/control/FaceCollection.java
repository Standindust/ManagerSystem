package hotel.control;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

public class FaceCollection {

    public int collect(String roomnumber,String id,String type) throws Exception {
        System.out.println("Python collection run");

        String[] cmds = new String[]{"D:\\Anaconda3\\envs\\insightface\\python.exe", "C:\\Users\\Standindust\\PycharmProjects\\faceidentify\\facecollect.py", roomnumber, id,type};
        Process process = Runtime.getRuntime().exec(cmds);

        BufferedReader in = new BufferedReader(new InputStreamReader(process.getInputStream()));

        String line;

//        while ((line = in.readLine()) != null) {
//            System.out.println(line);
//        }

        in.close();
        process.waitFor();
        if(process.exitValue()!=0){
            return 0;
        }
        System.out.println("run collection finish");
        String content = "error";
        return 1;
    }

    public void train(String roomnumber) throws Exception {
        System.out.println("\nPython rtain run");
        String[] cmds = new String[]{"D:\\Anaconda3\\envs\\insightface\\python.exe", "C:\\Users\\Standindust\\PycharmProjects\\faceidentify\\train.py",roomnumber,"guest"};
        Process process = Runtime.getRuntime().exec(cmds);


    }
    public void trainall() throws Exception {
        System.out.println("Python trainall run");

        String[] cmds = new String[]{"D:\\Anaconda3\\envs\\insightface\\python.exe", "C:\\Users\\Standindust\\PycharmProjects\\faceidentify\\trainall.py"};
        Process process = Runtime.getRuntime().exec(cmds);

    }
    public int identy(String roomnumber) throws Exception {

        System.out.println("Python identity run");

        String[] cmds = new String[]{"D:\\Anaconda3\\envs\\insightface\\python.exe", "C:\\Users\\Standindust\\PycharmProjects\\faceidentify\\identy.py",roomnumber,"guest"};
        Process process = Runtime.getRuntime().exec(cmds);
        BufferedReader in = new BufferedReader(new InputStreamReader(process.getInputStream()));

        String line;
        process.waitFor();

        while ((line = in.readLine()) != null) {
            System.out.println(line);
        }

        in.close();

        if(process.exitValue()!=0){
            return 0;
        }
        System.out.println("identity run finish");
        return 1;
    }
    public void identyAll()  throws Exception {
        System.out.println("Python identityAll run");

        String[] cmds = new String[]{"D:\\Anaconda3\\envs\\insightface\\python.exe", "C:\\Users\\Standindust\\PycharmProjects\\faceidentify\\identyall.py"};
        Process process = Runtime.getRuntime().exec(cmds);
        BufferedReader in = new BufferedReader(new InputStreamReader(process.getInputStream()));

    }

    public  boolean deleteFile(String fileName) {
        File file = new File(fileName);
        // ????????????????????????????????????
        if (file.exists() && file.isFile()) {
            if (file.delete()) {
                System.out.println("deleteFile???" + fileName + "success???");
                return true;
            } else {
                System.out.println("deleteFile???" + fileName + "fail???");
                return false;
            }
        } else {
            System.out.println(fileName + "doesn't insist???");
            return false;
        }
    }

        public  boolean deleteAllFile(String dir) {
            // ??????dir?????????????????????????????????????????????????????????
//        if (!dir.endsWith(File.separator))
//            dir = dir + File.separator;
            File dirFile = new File(dir);
            // ??????dir???????????????????????????????????????????????????????????????
            if ((!dirFile.exists()) || (!dirFile.isDirectory())) {
                System.out.println("delete derectory" + dir + "doesn't insist???");
                return false;
            }
            boolean flag = true;
            // ???????????????????????????????????????????????????
            File[] files = dirFile.listFiles();
            for (int i = 0; i < files.length; i++) {
                // ???????????????

                if (files[i].isFile()) {
                    flag = deleteFile(files[i].getAbsolutePath());
                    if (!flag)
                        break;
                }
                // ??????????????????
                else if (files[i].isDirectory()) {
                    flag = deleteAllFile(files[i].getAbsolutePath());
                    if (!flag)
                        break;
                }
            }
            if (!flag) {
                System.out.println("delete derectory fail???");
                return false;
            }
            // ?????????????????????
            if (dirFile.delete()) {
                System.out.println("delete derectory" + dir + "success???");
                return true;
            } else {
                return false;
            }

    }


}

