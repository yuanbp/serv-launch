package org.soft.launch.kernel.tools;

import com.github.f4b6a3.tsid.TsidCreator;
import com.github.f4b6a3.uuid.UuidCreator;

/**
 * @author chieftain
 * @date 2020/4/16 12:54
 */
public class UUID {

    public static String timeOrderedIdWithMac() {
        return UuidCreator.getTimeOrderedWithMac().toString().replaceAll("-", "");
    }

    public static String timeOrderedIdWithFingerprint() {
        return UuidCreator.getTimeOrderedWithHash().toString().replaceAll("-", "");
    }

    public static String timeOrderedId() {
        return UuidCreator.getTimeOrdered().toString().replaceAll("-", "");
    }

    public static long getTsid256() {
        return TsidCreator.getTsid256();
    }
    public static long getTsid1024() {
        return TsidCreator.getTsid1024();
    }
    public static long getTsid4096() {
        return TsidCreator.getTsid4096();
    }

    public static String simpleId() {
        return java.util.UUID.randomUUID().toString().replaceAll("-", "");
    }

    public static String fullId() {
        return java.util.UUID.randomUUID().toString();
    }

    public static void main(String[] args) {
        System.out.println(timeOrderedIdWithMac());
        System.out.println(getTsid256());
    }
}
