package hotel.control;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Paths;
import org.apache.commons.io.FileUtils;
import java.io.File;
import java.io.IOException;
public class FaceCollection {
    public int active(String roomnumber,String id,String type) throws Exception {
        System.out.println("Python collection run");

        String[] cmds = new String[]{"D:\\Anaconda3\\python.exe", "C:\\Users\\Standindust\\PycharmProjects\\faceidentify\\facecollect.py", roomnumber, id,type};
        Process process = Runtime.getRuntime().exec(cmds);
        BufferedReader in = new BufferedReader(new InputStreamReader(process.getInputStream()));

        String line;

        while ((line = in.readLine()) != null) {
            System.out.println(line);
        }

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
        System.out.println("Python rtain run");
        String[] cmds = new String[]{"D:\\Anaconda3\\python.exe", "C:\\Users\\Standindust\\PycharmProjects\\faceidentify\\train.py",roomnumber};
        Process process = Runtime.getRuntime().exec(cmds);
    }
    public void trainall() throws Exception {
        System.out.println("Python trainall run");

        String[] cmds = new String[]{"D:\\Anaconda3\\python.exe", "C:\\Users\\Standindust\\PycharmProjects\\faceidentify\\trainall.py"};
        Process process = Runtime.getRuntime().exec(cmds);
    }
    public int identy(String roomnumber) throws Exception {

        System.out.println("Python identity run");

        String[] cmds = new String[]{"D:\\Anaconda3\\python.exe", "C:\\Users\\Standindust\\PycharmProjects\\faceidentify\\identy.py",roomnumber};
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
    public  boolean deleteFile(String fileName) {
        File file = new File(fileName);
        // 如果文件路径只有单个文件
        if (file.exists() && file.isFile()) {
            if (file.delete()) {
                System.out.println("删除文件" + fileName + "成功！");
                return true;
            } else {
                System.out.println("删除文件" + fileName + "失败！");
                return false;
            }
        } else {
            System.out.println(fileName + "不存在！");
            return false;
        }
    }

        public  boolean deleteAllFile(String dir) {
            // 如果dir不以文件分隔符结尾，自动添加文件分隔符
//        if (!dir.endsWith(File.separator))
//            dir = dir + File.separator;
            File dirFile = new File(dir);
            // 如果dir对应的文件不存在，或者不是一个目录，则退出
            if ((!dirFile.exists()) || (!dirFile.isDirectory())) {
                System.out.println("删除文件夹失败：" + dir + "不存在！");
                return false;
            }
            boolean flag = true;
            // 删除文件夹中的所有文件包括子文件夹
            File[] files = dirFile.listFiles();
            for (int i = 0; i < files.length; i++) {
                // 删除子文件

                if (files[i].isFile()) {
                    flag = deleteFile(files[i].getAbsolutePath());
                    if (!flag)
                        break;
                }
                // 删除子文件夹
                else if (files[i].isDirectory()) {
                    flag = deleteAllFile(files[i].getAbsolutePath());
                    if (!flag)
                        break;
                }
            }
            if (!flag) {
                System.out.println("删除文件夹失败！");
                return false;
            }
            // 删除当前文件夹
            if (dirFile.delete()) {
                System.out.println("删除文件夹" + dir + "成功！");
                return true;
            } else {
                return false;
            }

    }

    }

