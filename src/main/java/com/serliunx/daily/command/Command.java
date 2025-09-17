package com.serliunx.daily.command;

import java.util.List;

/**
 * @author <a href="mailto:root@serliunx.com">SerLiunx</a>
 * @since 2025/9/16
 */
public interface Command {

    String getName();

    boolean execute(String[] args);

    List<String> availableArgs();
}
