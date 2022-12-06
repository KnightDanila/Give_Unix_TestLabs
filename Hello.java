import java.io.*;  

class Hello {
	public static void main(String[] args) {
		System.out.print("Hallo Welt!!!\n");
		if(args.length > 0) {
			System.out.printf("Hallo, %s\n", args[0]);
				return;
		}
		System.out.print("Wie heißen Sie?\n");
 		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		try{
			String user_name = br.readLine();
			System.out.printf("Hallo, %s\n", user_name);
		} catch (IOException e) {
        		System.out.println(e.getMessage());
		}
	}
}