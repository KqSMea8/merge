.class public Lc8/WLn;
.super Ljava/lang/Object;
.source "GetSysInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lc8/WLn;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/WLn;->TAG:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "GetSystemInfo"

    invoke-static {v0}, Lc8/TOm;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private native getCoresMaxFreq(I)I
.end method

.method private native getCoresMinFreq(I)I
.end method

.method private native getCpuArchitecture()Ljava/lang/String;
.end method

.method private native getCpuCoresNum()I
.end method

.method private native getCpuName()Ljava/lang/String;
.end method

.method private native getExternalStorageTotalSize()J
.end method

.method private native getExternalStroageFreeSize()J
.end method

.method private native getGpuRenderer()Ljava/lang/String;
.end method

.method private native getGpuVendor()Ljava/lang/String;
.end method

.method private native getGpuVersion()Ljava/lang/String;
.end method

.method private native getMemFreeSize()J
.end method

.method private native getMemTotalSize()J
.end method

.method private native getPhoneDevModel()Ljava/lang/String;
.end method

.method private native getPhoneSdkVersion()Ljava/lang/String;
.end method

.method private native getPhoneSerialNo()Ljava/lang/String;
.end method

.method private native getPhoneVersionRelease()Ljava/lang/String;
.end method

.method private native isCpuSurpportArch64()Z
.end method

.method private native isCpuSurpportNeon()Z
.end method


# virtual methods
.method public getArchitectureName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lc8/WLn;->getCpuArchitecture()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public getBootLoader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    return-object v0
.end method

.method public getCPUVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lc8/WLn;->getCpuName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoresMaxFrequence(I)I
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lc8/WLn;->getCoresMaxFreq(I)I

    move-result v0

    return v0
.end method

.method public getCoresMinFrequence(I)I
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lc8/WLn;->getCoresMinFreq(I)I

    move-result v0

    return v0
.end method

.method public getCpuAbi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuAbi2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuCoresNumber()I
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lc8/WLn;->getCpuCoresNum()I

    move-result v0

    return v0
.end method

.method public getDeViceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "androidId":Ljava/lang/String;
    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public getExternFreeSize()J
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Lc8/WLn;->getExternalStroageFreeSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExternTotalSize()J
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lc8/WLn;->getExternalStorageTotalSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public getGraphicsRenderer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lc8/WLn;->getGpuRenderer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGraphicsVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lc8/WLn;->getGpuVendor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGraphicsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Lc8/WLn;->getGpuVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHardWare()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoryFreeSize()J
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lc8/WLn;->getMemFreeSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMemoryTotalSize()J
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lc8/WLn;->getMemTotalSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneAndroidSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lc8/WLn;->getPhoneSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lc8/WLn;->getPhoneVersionRelease()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lc8/WLn;->getPhoneDevModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lc8/WLn;->getPhoneSerialNo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPixel(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v11, 0x11

    .line 229
    const-string/jumbo v5, ""

    .line 232
    .local v5, "pixel":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v10, "window"

    .line 233
    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 234
    .local v9, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 235
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 236
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 237
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v11, :cond_0

    .line 238
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 239
    .local v8, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 240
    iget v7, v8, Landroid/graphics/Point;->x:I

    .line 241
    .local v7, "realWidth":I
    iget v6, v8, Landroid/graphics/Point;->y:I

    .line 252
    .end local v8    # "size":Landroid/graphics/Point;
    .local v6, "realHeight":I
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 257
    .end local v0    # "display":Landroid/view/Display;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "realHeight":I
    .end local v7    # "realWidth":I
    .end local v9    # "windowManager":Landroid/view/WindowManager;
    :goto_1
    return-object v5

    .line 242
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v4    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v9    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v10, v11, :cond_1

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xe

    if-lt v10, v11, :cond_1

    .line 244
    const-class v10, Landroid/view/Display;

    const-string/jumbo v11, "getRawHeight"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 245
    .local v2, "mGetRawH":Ljava/lang/reflect/Method;
    const-class v10, Landroid/view/Display;

    const-string/jumbo v11, "getRawWidth"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 246
    .local v3, "mGetRawW":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3, v0, v10}, Lc8/WLn;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 247
    .restart local v7    # "realWidth":I
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v0, v10}, Lc8/WLn;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 248
    .restart local v6    # "realHeight":I
    goto :goto_0

    .line 249
    .end local v2    # "mGetRawH":Ljava/lang/reflect/Method;
    .end local v3    # "mGetRawW":Ljava/lang/reflect/Method;
    .end local v6    # "realHeight":I
    .end local v7    # "realWidth":I
    :cond_1
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 250
    .restart local v7    # "realWidth":I
    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v6    # "realHeight":I
    goto :goto_0

    .line 253
    .end local v0    # "display":Landroid/view/Display;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "realHeight":I
    .end local v7    # "realWidth":I
    .end local v9    # "windowManager":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    sget-object v0, Landroid/os/Build;->RADIO:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public getUA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknown()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    return-object v0
.end method

.method public getanufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public isDeviceRooted()Z
    .locals 3

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 400
    .local v0, "bool":Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/bin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/xbin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 408
    :goto_0
    return v0

    .line 403
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isSurpportArch64()Z
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lc8/WLn;->isCpuSurpportArch64()Z

    move-result v0

    return v0
.end method

.method public isSurpportNeon()Z
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lc8/WLn;->isCpuSurpportNeon()Z

    move-result v0

    return v0
.end method
