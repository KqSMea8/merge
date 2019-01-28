.class public Lc8/Krf;
.super Ljava/lang/Object;
.source "HardWareInfo.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Lrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnlineRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Lrf;


# direct methods
.method constructor <init>(Lc8/Lrf;)V
    .locals 0

    .prologue
    .line 1214
    iput-object p1, p0, Lc8/Krf;->this$0:Lc8/Lrf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "arg0"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 1263
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "arg0"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1268
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 1218
    :try_start_0
    iget-object v0, p0, Lc8/Krf;->this$0:Lc8/Lrf;

    const/16 v1, 0x1f01

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    .line 1219
    iget-object v0, p0, Lc8/Krf;->this$0:Lc8/Lrf;

    const/16 v1, 0x1f00

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/Lrf;->mGpuBrand:Ljava/lang/String;

    .line 1220
    iget-object v0, p0, Lc8/Krf;->this$0:Lc8/Lrf;

    iget-object v0, v0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v1, p0, Lc8/Krf;->this$0:Lc8/Lrf;

    iget-object v1, v1, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->gpuModel:Ljava/lang/String;

    .line 1221
    iget-object v0, p0, Lc8/Krf;->this$0:Lc8/Lrf;

    iget-object v0, v0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v1, p0, Lc8/Krf;->this$0:Lc8/Lrf;

    iget-object v1, v1, Lc8/Lrf;->mGpuBrand:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->gpuBrand:Ljava/lang/String;

    .line 1243
    iget-object v0, p0, Lc8/Krf;->this$0:Lc8/Lrf;

    invoke-virtual {v0}, Lc8/Lrf;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    :try_start_1
    iget-object v0, p0, Lc8/Krf;->this$0:Lc8/Lrf;

    iget-object v1, p0, Lc8/Krf;->this$0:Lc8/Lrf;

    invoke-virtual {v1}, Lc8/Lrf;->getGpuFreq()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/Lrf;->mGpuFreq:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1251
    :goto_0
    :try_start_2
    iget-object v0, p0, Lc8/Krf;->this$0:Lc8/Lrf;

    iget-object v0, v0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    const/4 v1, 0x0

    iput-short v1, v0, Lc8/msf;->mDevicesScore:S

    .line 1252
    iget-object v0, p0, Lc8/Krf;->this$0:Lc8/Lrf;

    iget-object v0, v0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v0}, Lc8/msf;->evaluateSystemPerformance()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1257
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
