package org.great.bean;

import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
@Aspect
@Component
 public class Computer {
	private String mainboard ="wwww";
	private String hdd ="wwww";
	private String ram ="wwww";

	public Computer()
	{
		super();
	}

	public String getMainboard() {
		return mainboard;
	}

	public void setMainboard(String mainboard) {
		this.mainboard = mainboard;
	}

	public String getHdd() {
		return hdd;
	}

	public void setHdd(String hdd) {
		this.hdd = hdd;
	}

	public String getRam() {
		return ram;
	}

	public void setRam(String ram) {
		this.ram = ram;
	}

	@Override
	public String toString() {
		return "Computer [hdd=" + hdd + ", mainboard=" + mainboard + ", ram="
				+ ram + "]";
	}

}
