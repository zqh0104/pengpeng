package com.pengpeng.common.enums;

public enum FileSource {
    DYNAMIC(1),
    COMMENT(2),
    PHOTO(3),
    FEED_BACK(4),
    BLOWING(5);

    private Integer value;

    FileSource(Integer value) {
        this.value = value;
    }

    public Integer getValue() {
        return value;
    }
}
