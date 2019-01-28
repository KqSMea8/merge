.class public Lc8/xIf;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/wIf;
    }
.end annotation


# static fields
.field private static final GROUP_NAME:Ljava/lang/String; = "message_box_switch"

.field private static remoteConfig:Lc8/wIf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static getRemoteInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 20
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/xIf;->getRemoteString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 22
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getRemoteLong(Ljava/lang/String;J)J
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 28
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/xIf;->getRemoteString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 30
    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .restart local p1    # "defaultValue":J
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getRemoteString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Lc8/xIf;->remoteConfig:Lc8/wIf;

    if-nez v0, :cond_0

    .line 36
    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    sget-object v0, Lc8/xIf;->remoteConfig:Lc8/wIf;

    const-string/jumbo v1, "message_box_switch"

    invoke-interface {v0, v1, p0, p1}, Lc8/wIf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getServerTime()J
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lc8/xIf;->remoteConfig:Lc8/wIf;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 41
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lc8/xIf;->remoteConfig:Lc8/wIf;

    invoke-interface {v0}, Lc8/wIf;->getServerTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static setRemoteConfig(Lc8/wIf;)V
    .locals 0
    .param p0, "remoteConfig"    # Lc8/wIf;

    .prologue
    .line 14
    sput-object p0, Lc8/xIf;->remoteConfig:Lc8/wIf;

    .line 15
    return-void
.end method
