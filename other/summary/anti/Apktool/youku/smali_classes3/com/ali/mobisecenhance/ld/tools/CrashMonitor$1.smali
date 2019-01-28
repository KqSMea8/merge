.class Lcom/ali/mobisecenhance/ld/tools/CrashMonitor$1;
.super Ljava/lang/Object;
.source "CrashMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->UploadLastCrashInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor$1;->this$0:Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 121
    const-string v2, "01234567890123"

    .line 123
    .local v2, "device_imei":Ljava/lang/String;
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor$1;->this$0:Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->access$000(Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->isPermision(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor$1;->this$0:Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->access$000(Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 125
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 128
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor$1;->this$0:Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->access$000(Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor$1;->this$0:Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    invoke-static {v1}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->access$100(Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor$1;->this$0:Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    invoke-static {v3}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->access$200(Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;)Lcom/ali/mobisecenhance/ld/ConfigInfo;

    move-result-object v3

    const-string v5, "UPLOAD_CRASH_MODE"

    const-string v6, "OBFUSCATOR_NATIVE_STATUS"

    invoke-static/range {v0 .. v6}, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->reportStartUpInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ali/mobisecenhance/ld/ConfigInfo;ZLjava/lang/String;Ljava/lang/String;)Z

    .line 130
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor$1;->this$0:Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    invoke-static {v0, v4}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->access$302(Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;Z)Z

    .line 131
    return-void

    .line 125
    .restart local v7    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v2, "null"

    goto :goto_0
.end method
