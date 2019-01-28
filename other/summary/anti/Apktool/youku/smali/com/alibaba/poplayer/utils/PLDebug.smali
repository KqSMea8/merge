.class public final Lcom/alibaba/poplayer/utils/PLDebug;
.super Ljava/lang/Object;
.source "PLDebug.java"


# static fields
.field private static final FORCE_DISPLAY:Ljava/lang/String; = "force_display"

.field public static final MONITOR_BLACKLIST:Ljava/lang/String; = "black_list"

.field public static final MONITOR_CONFIG_ITEMS:Ljava/lang/String; = "config_items"

.field public static final MONITOR_CONFIG_SET:Ljava/lang/String; = "config_set"

.field public static final MONITOR_NATIVE_URL:Ljava/lang/String; = "native_url"

.field public static final MONITOR_PAGE:Ljava/lang/String; = "page"

.field public static final MONITOR_VERSION:Ljava/lang/String; = "version"

.field public static final MONITOR_WHITELIST:Ljava/lang/String; = "white_list"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isForceDisplay(Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Z
    .locals 2
    .param p0, "config"    # Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    .prologue
    .line 9
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->debugInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->debugInfo:Ljava/lang/String;

    const-string/jumbo v1, "force_display"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
