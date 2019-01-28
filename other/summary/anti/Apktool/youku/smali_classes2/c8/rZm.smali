.class public Lc8/rZm;
.super Ljava/lang/Object;
.source "PushManager.java"


# static fields
.field public static final KEY_PUSH_SWITCH:Ljava/lang/String; = "video_notifi"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lc8/rZm;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/rZm;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPushSwitch(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string/jumbo v1, "video_notifi"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lc8/tZm;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 55
    .local v0, "state":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get push swtich: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    return v0
.end method

.method public static setPushSwitch(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    invoke-static {p0}, Lc8/rZm;->getPushSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 25
    const-string/jumbo v0, "video_notifi"

    invoke-static {p0, v0, p1}, Lc8/tZm;->setPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 27
    :cond_0
    return-void
.end method
