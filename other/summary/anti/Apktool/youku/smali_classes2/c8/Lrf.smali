.class public Lc8/Lrf;
.super Ljava/lang/Object;
.source "HardWareInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Jrf;,
        Lc8/Krf;
    }
.end annotation


# instance fields
.field mCPUModelScore:I

.field protected mCpuBrand:Ljava/lang/String;

.field mCpuCount:I

.field mCpuFreqArray:[F

.field mCpuMaxFreq:F

.field mCpuMinFreq:F

.field protected mCpuName:Ljava/lang/String;

.field protected mCpuScore0:Ljava/lang/String;

.field protected mCpuScore1:Ljava/lang/String;

.field protected mCpuScore10:Ljava/lang/String;

.field protected mCpuScore2:Ljava/lang/String;

.field protected mCpuScore3:Ljava/lang/String;

.field protected mCpuScore4:Ljava/lang/String;

.field protected mCpuScore5:Ljava/lang/String;

.field protected mCpuScore6:Ljava/lang/String;

.field protected mCpuScore7:Ljava/lang/String;

.field protected mCpuScore8:Ljava/lang/String;

.field protected mCpuScore9:Ljava/lang/String;

.field mCpuScoreAry:[Ljava/lang/String;

.field mDesty:F

.field mFileGPUinfo:Ljava/lang/String;

.field protected mGpuBrand:Ljava/lang/String;

.field mGpuFreq:J

.field protected mGpuName:Ljava/lang/String;

.field mHeight:I

.field mIsGpuFileExist:Z

.field mOnLineMonitor:Lc8/msf;

.field mOnlineGLSurfaceView:Lc8/Jrf;

.field mViewGroup:Landroid/view/ViewGroup;

.field mWidth:I


# direct methods
.method public constructor <init>(Lc8/msf;Landroid/content/Context;)V
    .locals 14
    .param p1, "onLineMonitor"    # Lc8/msf;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v11, 0x0

    iput v11, p0, Lc8/Lrf;->mCpuCount:I

    .line 39
    const-string/jumbo v11, "MSM8996,MSM8997,MSM8998,MSM8996PRO,MSM8996 PRO,MSM8994,EXYNOS8890,EXYNOS8895,EXYNOS7420,HI3670,HI3660"

    iput-object v11, p0, Lc8/Lrf;->mCpuScore10:Ljava/lang/String;

    .line 40
    const-string/jumbo v11, "MSM8946,MSM8956,MSM8992,HI3650,VBOX86"

    iput-object v11, p0, Lc8/Lrf;->mCpuScore9:Ljava/lang/String;

    .line 41
    const-string/jumbo v11, "APQ8084,MSM8084,MSM8953,HI3630,EXYNOS5433,HI3635,EXYNOS5"

    iput-object v11, p0, Lc8/Lrf;->mCpuScore8:Ljava/lang/String;

    .line 42
    const-string/jumbo v11, "MSM8X74,MSM8X74AA,MSM8X74AB,MSM8X74AC,MSM8674,MSM8274,MSM8074,EXYNOS5430,EXYNOS7870,EXYNOS7580,EXYNOS5433,MT679X,MT6797T,MT6797,EXYNOS5420,UNIVERSAL5420,RANCHU"

    iput-object v11, p0, Lc8/Lrf;->mCpuScore7:Ljava/lang/String;

    .line 43
    const-string/jumbo v11, "MT675X,MT6795,MT6755,MT6752,MT6753,EXYNOS5800,EXYNOS5422,EXYNOS5410,MSM8952,MSM8940,PXA1936,HI6210SFT"

    iput-object v11, p0, Lc8/Lrf;->mCpuScore6:Ljava/lang/String;

    .line 44
    const-string/jumbo v11, "EXYNOS5260,EXYNOS5250,MT6750,MT6735,MSM8939V2,MSM8937,MSM8929,APQ8064,MSM8917,EXYNOS52,K3V2+,REDHOOKBAY,PXA1908,SC9860,HI6620OEM"

    iput-object v11, p0, Lc8/Lrf;->mCpuScore5:Ljava/lang/String;

    .line 45
    const-string/jumbo v11, "MT6595,MT6592,MT6582,MSM8936,MSM8909,MSM8909V2,MSM8916V2,MSM8208,MSM8960T,MSM8260A,MSM8660A,MSM8960,MSM8X12,MSM8X10,MSM8X30,LC1860"

    iput-object v11, p0, Lc8/Lrf;->mCpuScore4:Ljava/lang/String;

    .line 46
    const-string/jumbo v11, "K3V2E,K3V2,MT6589,EXYNOS4210,EXYNOS4212,MSM8X25Q,MSM8X26,PXA1088,PXA1L88"

    iput-object v11, p0, Lc8/Lrf;->mCpuScore3:Ljava/lang/String;

    .line 47
    const-string/jumbo v11, "MSM8260,MSM8660,MSM8625,MSM8225,MSM8655,APQ8055,MSM7230,MSM7630,GOLDFISH,EXYNOS3475,EXYNOS3110"

    iput-object v11, p0, Lc8/Lrf;->mCpuScore2:Ljava/lang/String;

    .line 49
    const-string/jumbo v11, "MSM8255T,MSM8655T,MSM7627A,MSM7227A,MSM7627T,MSM7227T,MT6577T,MT6572M,MT6515M,MT6575,QSD8650,QSD8250,OMAP4470,SP8810,SC8810"

    iput-object v11, p0, Lc8/Lrf;->mCpuScore1:Ljava/lang/String;

    .line 50
    const-string/jumbo v11, "MT6516,MT6573,MT6513,S5PC100,S5L8900,HI3611,HI3620,OMAP4460,OMAP4440,OMAP4430"

    iput-object v11, p0, Lc8/Lrf;->mCpuScore0:Ljava/lang/String;

    .line 52
    const/16 v11, 0xb

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lc8/Lrf;->mCpuScore0:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lc8/Lrf;->mCpuScore1:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lc8/Lrf;->mCpuScore2:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lc8/Lrf;->mCpuScore3:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x4

    iget-object v13, p0, Lc8/Lrf;->mCpuScore4:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x5

    iget-object v13, p0, Lc8/Lrf;->mCpuScore5:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x6

    iget-object v13, p0, Lc8/Lrf;->mCpuScore6:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x7

    iget-object v13, p0, Lc8/Lrf;->mCpuScore7:Ljava/lang/String;

    aput-object v13, v11, v12

    const/16 v12, 0x8

    iget-object v13, p0, Lc8/Lrf;->mCpuScore8:Ljava/lang/String;

    aput-object v13, v11, v12

    const/16 v12, 0x9

    iget-object v13, p0, Lc8/Lrf;->mCpuScore9:Ljava/lang/String;

    aput-object v13, v11, v12

    const/16 v12, 0xa

    iget-object v13, p0, Lc8/Lrf;->mCpuScore10:Ljava/lang/String;

    aput-object v13, v11, v12

    iput-object v11, p0, Lc8/Lrf;->mCpuScoreAry:[Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    .line 63
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 64
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v2, :cond_0

    .line 65
    iget v11, v2, Landroid/util/DisplayMetrics;->density:F

    iput v11, p0, Lc8/Lrf;->mDesty:F

    .line 66
    iget v11, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v11, p0, Lc8/Lrf;->mWidth:I

    .line 67
    iget v11, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v11, p0, Lc8/Lrf;->mHeight:I

    .line 69
    iget-object v11, p1, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v11, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v12, p0, Lc8/Lrf;->mHeight:I

    iput v12, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->screenHeght:I

    .line 70
    iget-object v11, p1, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v11, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v12, p0, Lc8/Lrf;->mWidth:I

    iput v12, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->screenWidth:I

    .line 71
    iget-object v11, p1, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v11, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v12, p0, Lc8/Lrf;->mDesty:F

    iput v12, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->density:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 78
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    .line 79
    .local v9, "innFile":Ljava/io/File;
    if-eqz v9, :cond_9

    .line 80
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/cpugpuinfo"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lc8/Lrf;->mFileGPUinfo:Ljava/lang/String;

    .line 84
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lc8/Lrf;->mFileGPUinfo:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "retry"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "fileReTry":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v11, p0, Lc8/Lrf;->mFileGPUinfo:Ljava/lang/String;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 88
    const/4 v11, 0x1

    iput-boolean v11, p0, Lc8/Lrf;->mIsGpuFileExist:Z

    .line 91
    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 92
    .local v7, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 93
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    .line 94
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    .line 95
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, "text":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 97
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lc8/Lrf;->mCpuCount:I

    .line 99
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 100
    if-eqz v10, :cond_2

    .line 101
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, p0, Lc8/Lrf;->mCpuMaxFreq:F

    .line 103
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    .line 104
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lc8/Lrf;->mGpuBrand:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    :try_start_2
    iget-object v11, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 108
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v6, "fileRetry":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 110
    const-string/jumbo v11, "OnLineMonitor"

    const-string/jumbo v12, "\u5220\u9664\u65e7\u7684\u914d\u7f6e\u6587\u4ef6"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 113
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 121
    .end local v6    # "fileRetry":Ljava/io/File;
    :cond_4
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 122
    if-eqz v10, :cond_5

    .line 123
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, p0, Lc8/Lrf;->mGpuFreq:J

    .line 125
    :cond_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 126
    if-eqz v10, :cond_6

    .line 127
    iget-object v11, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lc8/msf;->mStatusBarHeight:I

    .line 129
    :cond_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 130
    if-eqz v10, :cond_7

    .line 131
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, p0, Lc8/Lrf;->mCpuMinFreq:F

    .line 132
    iget v11, p0, Lc8/Lrf;->mCpuMinFreq:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_7

    .line 133
    iget v11, p0, Lc8/Lrf;->mCpuMaxFreq:F

    iput v11, p0, Lc8/Lrf;->mCpuMinFreq:F

    .line 136
    :cond_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 137
    iget-object v11, p0, Lc8/Lrf;->mCpuFreqArray:[F

    if-nez v11, :cond_8

    .line 138
    invoke-virtual {p0}, Lc8/Lrf;->getCpuCore()I

    move-result v11

    new-array v11, v11, [F

    iput-object v11, p0, Lc8/Lrf;->mCpuFreqArray:[F

    .line 139
    iget-object v11, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v11, v11, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v11, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v12, p0, Lc8/Lrf;->mCpuFreqArray:[F

    iput-object v12, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuFreqArray:[F

    .line 141
    :cond_8
    iget-object v11, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v11, v11, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v11, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v12, p0, Lc8/Lrf;->mCpuMinFreq:F

    iput v12, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuMinFreq:F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 143
    if-eqz v10, :cond_b

    .line 144
    :try_start_4
    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "cpuFloatAry":[Ljava/lang/String;
    if-eqz v1, :cond_b

    array-length v11, v1

    if-lez v11, :cond_b

    .line 146
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    array-length v11, v1

    if-ge v8, v11, :cond_b

    .line 147
    iget-object v11, p0, Lc8/Lrf;->mCpuFreqArray:[F

    aget-object v12, v1, v8

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    aput v12, v11, v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 146
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 82
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "cpuFloatAry":[Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileReTry":Ljava/lang/String;
    .end local v7    # "fr":Ljava/io/FileReader;
    .end local v8    # "i":I
    .end local v10    # "text":Ljava/lang/String;
    :cond_9
    const-string/jumbo v11, ""

    iput-object v11, p0, Lc8/Lrf;->mFileGPUinfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 118
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileReTry":Ljava/lang/String;
    .restart local v7    # "fr":Ljava/io/FileReader;
    .restart local v10    # "text":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 119
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 174
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v7    # "fr":Ljava/io/FileReader;
    .end local v10    # "text":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 175
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_4
    return-void

    .line 152
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    .restart local v10    # "text":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 153
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b
    iget-object v11, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v11, v11, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v11, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v12, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    iput-object v12, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->gpuModel:Ljava/lang/String;

    .line 156
    iget-object v11, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v11, v11, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v11, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v12, p0, Lc8/Lrf;->mGpuBrand:Ljava/lang/String;

    iput-object v12, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->gpuBrand:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 158
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 159
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 160
    iget-object v11, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v11, v11, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v11, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iput-object v10, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuArch:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 170
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 171
    sget-boolean v11, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v11, :cond_a

    .line 172
    const-string/jumbo v11, "OnLineMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "GPU Form prop= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", Brand="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lc8/Lrf;->mGpuBrand:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    .line 162
    :cond_c
    :try_start_9
    iget-object v11, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v11, v11, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v11, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    invoke-virtual {p0}, Lc8/Lrf;->getCpuArch()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuArch:Ljava/lang/String;

    .line 163
    const/4 v11, 0x0

    iput-boolean v11, p0, Lc8/Lrf;->mIsGpuFileExist:Z

    .line 164
    invoke-virtual {p0}, Lc8/Lrf;->saveCpuAndGpuInfo()V

    .line 165
    const/4 v11, 0x1

    iput-boolean v11, p0, Lc8/Lrf;->mIsGpuFileExist:Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_5

    :catch_3
    move-exception v11

    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileReTry":Ljava/lang/String;
    .end local v7    # "fr":Ljava/io/FileReader;
    .end local v9    # "innFile":Ljava/io/File;
    .end local v10    # "text":Ljava/lang/String;
    :catch_4
    move-exception v11

    goto/16 :goto_0
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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


# virtual methods
.method calcCpuModelScore(Ljava/lang/String;)I
    .locals 3
    .param p1, "cpuBrand"    # Ljava/lang/String;

    .prologue
    .line 888
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lc8/Lrf;->mCpuScoreAry:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 889
    iget-object v2, p0, Lc8/Lrf;->mCpuScoreAry:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 890
    .local v0, "cpu":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 895
    .end local v0    # "cpu":Ljava/lang/String;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 888
    .restart local v0    # "cpu":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 895
    .end local v0    # "cpu":Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1210
    iput-object v0, p0, Lc8/Lrf;->mOnlineGLSurfaceView:Lc8/Jrf;

    .line 1211
    iput-object v0, p0, Lc8/Lrf;->mViewGroup:Landroid/view/ViewGroup;

    .line 1212
    return-void
.end method

.method public getBrandScore()I
    .locals 3

    .prologue
    .line 857
    const/4 v1, 0x4

    .line 859
    .local v1, "brandScore":I
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "brand":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 862
    const/4 v1, 0x1

    .line 884
    :cond_0
    :goto_0
    return v1

    .line 864
    :cond_1
    const-string/jumbo v2, "samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "google"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 865
    :cond_2
    const/16 v1, 0xa

    goto :goto_0

    .line 866
    :cond_3
    const-string/jumbo v2, "huawei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "honor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 867
    :cond_4
    const/16 v1, 0x9

    goto :goto_0

    .line 868
    :cond_5
    const-string/jumbo v2, "xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "meizu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "oppo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "lge"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "verizon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 870
    :cond_6
    const/16 v1, 0x8

    goto :goto_0

    .line 871
    :cond_7
    const-string/jumbo v2, "motorola"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "zte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "sony"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "zuk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "smartisan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 874
    :cond_8
    const/4 v1, 0x7

    goto/16 :goto_0

    .line 875
    :cond_9
    const-string/jumbo v2, "gionee"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "letv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "leeco"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "coolpad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "htc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 877
    :cond_a
    const/4 v1, 0x6

    goto/16 :goto_0

    .line 878
    :cond_b
    const-string/jumbo v2, "nubia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "oneplus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "qiku"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "360"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "lenovo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "cmcc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "asus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    :cond_c
    const/4 v1, 0x5

    goto/16 :goto_0
.end method

.method public getCpuArch()Ljava/lang/String;
    .locals 6

    .prologue
    .line 278
    iget-object v5, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuArch:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 279
    iget-object v5, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v1, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuArch:Ljava/lang/String;

    .line 312
    :goto_0
    return-object v1

    .line 281
    :cond_0
    const-string/jumbo v1, "UnKnown"

    .line 283
    .local v1, "cpuArch":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string/jumbo v5, "/proc/cpuinfo"

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 284
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 286
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "text":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    .line 288
    const-string/jumbo v5, "AArch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "ARM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "Intel(R)"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "model name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 289
    :cond_2
    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 290
    .local v3, "start":I
    if-ltz v3, :cond_1

    .line 293
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 294
    const-string/jumbo v5, "Intel(R)"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 295
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 299
    :goto_2
    if-lez v3, :cond_1

    .line 302
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 308
    .end local v3    # "start":I
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v4    # "text":Ljava/lang/String;
    :catch_0
    move-exception v5

    const-string/jumbo v1, "UnKnown"

    goto :goto_0

    .line 297
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "start":I
    .restart local v4    # "text":Ljava/lang/String;
    :cond_4
    const/16 v5, 0x29

    :try_start_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    goto :goto_2

    .line 306
    .end local v3    # "start":I
    :cond_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method getCpuBrand()V
    .locals 12

    .prologue
    .line 900
    const/4 v3, 0x0

    .line 901
    .local v3, "cpuinfo":Ljava/lang/String;
    const/4 v1, 0x0

    .line 902
    .local v1, "brandScore":I
    sget-object v8, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 903
    .local v4, "hardware":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 905
    const/4 v1, 0x0

    .line 1078
    :cond_0
    :goto_0
    iput v1, p0, Lc8/Lrf;->mCPUModelScore:I

    .line 1079
    iget v8, p0, Lc8/Lrf;->mCPUModelScore:I

    if-gez v8, :cond_1

    .line 1080
    const/4 v8, 0x0

    iput v8, p0, Lc8/Lrf;->mCPUModelScore:I

    .line 1082
    :cond_1
    return-void

    .line 910
    :cond_2
    iget-object v8, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 912
    :cond_3
    const-string/jumbo v8, "EXYNOS"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 913
    const-string/jumbo v8, "samsung"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 932
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 933
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 935
    :cond_5
    if-eqz v3, :cond_1

    .line 938
    const-string/jumbo v8, "EXYNOS"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v8, "SMDK"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v8, "UNIVERSAL"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 939
    :cond_6
    const-string/jumbo v8, "\u4e09\u661f"

    iput-object v8, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    .line 961
    :goto_2
    iput-object v3, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    .line 965
    :goto_3
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v8, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v9, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    iput-object v9, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuBrand:Ljava/lang/String;

    .line 966
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v8, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iput-object v3, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuModel:Ljava/lang/String;

    .line 967
    invoke-virtual {p0, v3}, Lc8/Lrf;->calcCpuModelScore(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lc8/Lrf;->mCPUModelScore:I

    .line 968
    sget-boolean v8, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v8, :cond_7

    .line 969
    const-string/jumbo v8, "OnLineMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Cpu="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mCpuBrand="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",mCPUModelScore="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lc8/Lrf;->mCPUModelScore:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_7
    iget v8, p0, Lc8/Lrf;->mCPUModelScore:I

    if-gez v8, :cond_8

    if-eqz v3, :cond_8

    .line 972
    const-string/jumbo v8, "MSM"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-le v8, v9, :cond_1f

    .line 973
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "X"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 974
    .local v7, "tempCpu":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lc8/Lrf;->calcCpuModelScore(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lc8/Lrf;->mCPUModelScore:I

    .line 989
    .end local v7    # "tempCpu":Ljava/lang/String;
    :cond_8
    :goto_4
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    .line 990
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v8, v8, Lc8/msf;->mCpuMaxFreq:F

    .line 991
    iget v8, p0, Lc8/Lrf;->mCPUModelScore:I

    if-gtz v8, :cond_1

    .line 994
    const-string/jumbo v8, "MSM"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string/jumbo v8, "EXYNOS"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string/jumbo v8, "QCOM"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string/jumbo v8, "QUALCOMM"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string/jumbo v8, "APQ"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 996
    :cond_9
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/16 v9, 0xa

    if-lt v8, v9, :cond_20

    .line 997
    const/16 v1, 0xa

    .line 1068
    :cond_a
    :goto_5
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v8, v8, Lc8/msf;->mCpuMaxFreq:F

    const/high16 v9, 0x40200000    # 2.5f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3f

    .line 1069
    add-int/lit8 v1, v1, -0x1

    .line 1073
    :cond_b
    :goto_6
    if-gez v1, :cond_0

    .line 1074
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 916
    :cond_c
    :try_start_0
    const-string/jumbo v8, "android.os.Build"

    invoke-static {v8}, Lc8/Lrf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 917
    .local v2, "classBuild":Ljava/lang/Class;
    const-string/jumbo v8, "getString"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 918
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 919
    const-class v8, Landroid/os/Build;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "ro.board.platform"

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lc8/Lrf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 920
    if-eqz v3, :cond_d

    .line 921
    const-string/jumbo v8, "mtk"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_d

    .line 922
    move-object v3, v4

    .line 928
    .end local v2    # "classBuild":Ljava/lang/Class;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_d
    :goto_7
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string/jumbo v8, "unknown"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string/jumbo v8, "samsungexynos"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string/jumbo v8, "mrvl"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 929
    :cond_e
    move-object v3, v4

    goto/16 :goto_1

    .line 940
    :cond_f
    const-string/jumbo v8, "MSM"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string/jumbo v8, "APQ"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string/jumbo v8, "QSD"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 941
    :cond_10
    const-string/jumbo v8, "\u9ad8\u901a"

    iput-object v8, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    goto/16 :goto_2

    .line 942
    :cond_11
    const-string/jumbo v8, "REDHOOKBAY"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string/jumbo v8, "MOOREFIELD"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string/jumbo v8, "MERRIFIELD"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 943
    :cond_12
    const-string/jumbo v8, "\u82f1\u7279\u5c14"

    iput-object v8, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    goto/16 :goto_2

    .line 944
    :cond_13
    const-string/jumbo v8, "MT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 945
    const-string/jumbo v8, "\u8054\u53d1\u79d1"

    iput-object v8, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    goto/16 :goto_2

    .line 946
    :cond_14
    const-string/jumbo v8, "OMAP"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 947
    const-string/jumbo v8, "\u5fb7\u5dde\u4eea\u5668"

    iput-object v8, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    goto/16 :goto_2

    .line 948
    :cond_15
    const-string/jumbo v8, "PXA"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 949
    const-string/jumbo v8, "Marvell"

    iput-object v8, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    goto/16 :goto_2

    .line 950
    :cond_16
    const-string/jumbo v8, "HI"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string/jumbo v8, "K3"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 951
    :cond_17
    const-string/jumbo v8, "\u534e\u4e3a\u6d77\u601d"

    iput-object v8, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    goto/16 :goto_2

    .line 952
    :cond_18
    const-string/jumbo v8, "SP"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string/jumbo v8, "SC"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 953
    :cond_19
    const-string/jumbo v8, "\u5c55\u8baf"

    iput-object v8, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    goto/16 :goto_2

    .line 954
    :cond_1a
    const-string/jumbo v8, "TEGRA"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1b

    const-string/jumbo v8, "NVIDIA"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 955
    :cond_1b
    const-string/jumbo v8, "NVIDIA"

    iput-object v8, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    goto/16 :goto_2

    .line 956
    :cond_1c
    const-string/jumbo v8, "LC"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 957
    const-string/jumbo v8, "\u8054\u82af\u79d1\u6280"

    iput-object v8, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    goto/16 :goto_2

    .line 959
    :cond_1d
    iput-object v4, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    goto/16 :goto_2

    .line 963
    :cond_1e
    iget-object v3, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    goto/16 :goto_3

    .line 977
    :cond_1f
    const-string/jumbo v8, "MT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 978
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 979
    .local v5, "lastChar":C
    const/16 v8, 0x30

    if-lt v5, v8, :cond_8

    const/16 v8, 0x39

    if-gt v5, v8, :cond_8

    .line 980
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "X"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 981
    .restart local v7    # "tempCpu":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lc8/Lrf;->calcCpuModelScore(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lc8/Lrf;->mCPUModelScore:I

    goto/16 :goto_4

    .line 998
    .end local v5    # "lastChar":C
    .end local v7    # "tempCpu":Ljava/lang/String;
    :cond_20
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/16 v9, 0x8

    if-lt v8, v9, :cond_21

    .line 999
    const/16 v1, 0x8

    goto/16 :goto_5

    .line 1000
    :cond_21
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/4 v9, 0x4

    if-lt v8, v9, :cond_22

    .line 1001
    const/4 v1, 0x5

    goto/16 :goto_5

    .line 1002
    :cond_22
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/4 v9, 0x2

    if-lt v8, v9, :cond_23

    .line 1003
    const/4 v1, 0x3

    goto/16 :goto_5

    .line 1005
    :cond_23
    const/4 v1, 0x2

    goto/16 :goto_5

    .line 1008
    :cond_24
    const-string/jumbo v8, "MOOREFIELD"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_25

    const-string/jumbo v8, "HI"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 1009
    :cond_25
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/16 v9, 0xa

    if-lt v8, v9, :cond_26

    .line 1010
    const/16 v1, 0x9

    goto/16 :goto_5

    .line 1011
    :cond_26
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/16 v9, 0x8

    if-lt v8, v9, :cond_27

    .line 1012
    const/16 v1, 0x8

    goto/16 :goto_5

    .line 1013
    :cond_27
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/4 v9, 0x4

    if-lt v8, v9, :cond_28

    .line 1014
    const/4 v1, 0x6

    goto/16 :goto_5

    .line 1015
    :cond_28
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/4 v9, 0x2

    if-lt v8, v9, :cond_29

    .line 1016
    const/4 v1, 0x4

    goto/16 :goto_5

    .line 1018
    :cond_29
    const/4 v1, 0x2

    goto/16 :goto_5

    .line 1020
    :cond_2a
    const-string/jumbo v8, "MERRIFIELD"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2b

    const-string/jumbo v8, "CLOVERTRAIL"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2b

    const-string/jumbo v8, "REDHOOKBAY"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2b

    const-string/jumbo v8, "TEGRA"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2b

    const-string/jumbo v8, "NVIDIA"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2b

    const-string/jumbo v8, "K3"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 1021
    :cond_2b
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/16 v9, 0xa

    if-lt v8, v9, :cond_2c

    .line 1022
    const/16 v1, 0x8

    goto/16 :goto_5

    .line 1023
    :cond_2c
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/16 v9, 0x8

    if-lt v8, v9, :cond_2d

    .line 1024
    const/4 v1, 0x7

    goto/16 :goto_5

    .line 1025
    :cond_2d
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/4 v9, 0x4

    if-lt v8, v9, :cond_2e

    .line 1026
    const/4 v1, 0x5

    goto/16 :goto_5

    .line 1027
    :cond_2e
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2f

    .line 1028
    const/4 v1, 0x4

    goto/16 :goto_5

    .line 1030
    :cond_2f
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 1032
    :cond_30
    const-string/jumbo v8, "SMDK"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_31

    const-string/jumbo v8, "MT"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 1033
    :cond_31
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/16 v9, 0xa

    if-lt v8, v9, :cond_32

    .line 1034
    const/16 v1, 0x8

    goto/16 :goto_5

    .line 1035
    :cond_32
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/16 v9, 0x8

    if-lt v8, v9, :cond_33

    .line 1036
    const/4 v1, 0x6

    goto/16 :goto_5

    .line 1037
    :cond_33
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/4 v9, 0x4

    if-lt v8, v9, :cond_34

    .line 1038
    const/4 v1, 0x4

    goto/16 :goto_5

    .line 1039
    :cond_34
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/4 v9, 0x2

    if-lt v8, v9, :cond_35

    .line 1040
    const/4 v1, 0x3

    goto/16 :goto_5

    .line 1042
    :cond_35
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 1044
    :cond_36
    const-string/jumbo v8, "PXA"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 1046
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/16 v9, 0x8

    if-lt v8, v9, :cond_37

    .line 1047
    const/4 v1, 0x5

    goto/16 :goto_5

    .line 1048
    :cond_37
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/4 v9, 0x4

    if-lt v8, v9, :cond_38

    .line 1049
    const/4 v1, 0x3

    goto/16 :goto_5

    .line 1050
    :cond_38
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/4 v9, 0x2

    if-lt v8, v9, :cond_39

    .line 1051
    const/4 v1, 0x2

    goto/16 :goto_5

    .line 1053
    :cond_39
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 1055
    :cond_3a
    const-string/jumbo v8, "SP"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3b

    const-string/jumbo v8, "SC"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3b

    const-string/jumbo v8, "OMAP"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1057
    :cond_3b
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/16 v9, 0x8

    if-lt v8, v9, :cond_3c

    .line 1058
    const/4 v1, 0x4

    goto/16 :goto_5

    .line 1059
    :cond_3c
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/4 v9, 0x4

    if-lt v8, v9, :cond_3d

    .line 1060
    const/4 v1, 0x2

    goto/16 :goto_5

    .line 1061
    :cond_3d
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    const/4 v9, 0x2

    if-lt v8, v9, :cond_3e

    .line 1062
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 1064
    :cond_3e
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 1070
    :cond_3f
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v8, v8, Lc8/msf;->mCpuMaxFreq:F

    const/high16 v9, 0x40000000    # 2.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_b

    .line 1071
    add-int/lit8 v1, v1, -0x2

    goto/16 :goto_6

    :catch_0
    move-exception v8

    goto/16 :goto_7
.end method

.method public getCpuCore()I
    .locals 2

    .prologue
    .line 368
    iget v1, p0, Lc8/Lrf;->mCpuCount:I

    if-nez v1, :cond_0

    .line 369
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 374
    .local v0, "cpuProcessCount":I
    iput v0, p0, Lc8/Lrf;->mCpuCount:I

    .line 376
    .end local v0    # "cpuProcessCount":I
    :cond_0
    iget v1, p0, Lc8/Lrf;->mCpuCount:I

    return v1
.end method

.method public getCpuCountScore()I
    .locals 3

    .prologue
    .line 380
    const/4 v0, 0x2

    .line 382
    .local v0, "cpuScore":I
    iget v1, p0, Lc8/Lrf;->mCpuCount:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 383
    const/16 v0, 0xa

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 384
    :cond_1
    iget v1, p0, Lc8/Lrf;->mCpuCount:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_2

    .line 385
    const/16 v0, 0x8

    goto :goto_0

    .line 386
    :cond_2
    iget v1, p0, Lc8/Lrf;->mCpuCount:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    .line 387
    const/4 v0, 0x7

    goto :goto_0

    .line 388
    :cond_3
    iget v1, p0, Lc8/Lrf;->mCpuCount:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 389
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getCpuModleCore()I
    .locals 1

    .prologue
    .line 1085
    invoke-virtual {p0}, Lc8/Lrf;->getCpuBrand()V

    .line 1086
    iget v0, p0, Lc8/Lrf;->mCPUModelScore:I

    return v0
.end method

.method getGpuFreq()J
    .locals 14

    .prologue
    .line 1095
    const-wide/16 v6, 0x0

    .line 1098
    .local v6, "freq":J
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v10, "/sys/devices/platform/gpusysfs/gpu_max_clock"

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1100
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    const-string/jumbo v10, "/sys/devices/platform/gpusysfs/max_freq"

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1102
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1103
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 1104
    .local v5, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1105
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 1106
    .local v9, "textFreq":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 1107
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1108
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_1

    .line 1109
    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12

    .line 1112
    :cond_1
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 1113
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_2

    move-wide v10, v6

    .line 1155
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v9    # "textFreq":Ljava/lang/String;
    :goto_0
    return-wide v10

    .line 1119
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    const-string/jumbo v10, "/sys/class/devfreq/"

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1120
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1121
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1122
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_3

    .line 1123
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 1125
    :cond_3
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v10, v4

    if-ge v8, v10, :cond_6

    .line 1126
    aget-object v3, v4, v8

    .line 1127
    .local v3, "filename":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "kgsl"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1128
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v4, v8

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/max_freq"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1129
    .local v2, "fileFreq":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 1130
    new-instance v2, Ljava/io/File;

    .end local v2    # "fileFreq":Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v4, v8

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/max_gpuclk"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1132
    .restart local v2    # "fileFreq":Ljava/io/File;
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1133
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 1134
    .restart local v5    # "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1135
    .restart local v0    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 1136
    .restart local v9    # "textFreq":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 1137
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1138
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_5

    .line 1139
    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12

    .line 1142
    :cond_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileFreq":Ljava/io/File;
    .end local v3    # "filename":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v8    # "i":I
    .end local v9    # "textFreq":Ljava/lang/String;
    :cond_6
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_7

    .line 1153
    const-string/jumbo v10, "/sys/devices/"

    invoke-virtual {p0, v10}, Lc8/Lrf;->getKgslFreq(Ljava/lang/String;)J

    move-result-wide v6

    :cond_7
    move-wide v10, v6

    .line 1155
    goto/16 :goto_0

    .line 1125
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "filename":Ljava/io/File;
    .restart local v4    # "files":[Ljava/io/File;
    .restart local v8    # "i":I
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filename":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    .end local v8    # "i":I
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method public getGpuInfo(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 181
    iget-boolean v2, p0, Lc8/Lrf;->mIsGpuFileExist:Z

    if-eqz v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 186
    check-cast v0, Landroid/app/Activity;

    .line 187
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lc8/Lrf;->mViewGroup:Landroid/view/ViewGroup;

    .line 188
    iget-object v2, p0, Lc8/Lrf;->mViewGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 189
    new-instance v2, Lc8/Jrf;

    invoke-direct {v2, p0, p1}, Lc8/Jrf;-><init>(Lc8/Lrf;Landroid/content/Context;)V

    iput-object v2, p0, Lc8/Lrf;->mOnlineGLSurfaceView:Lc8/Jrf;

    .line 190
    iget-object v2, p0, Lc8/Lrf;->mOnlineGLSurfaceView:Lc8/Jrf;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/Jrf;->setAlpha(F)V

    .line 191
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 192
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lc8/Lrf;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lc8/Lrf;->mOnlineGLSurfaceView:Lc8/Jrf;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getGpuScore()I
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const v11, 0x3fe66666    # 1.8f

    const/4 v10, 0x2

    const-wide/16 v8, 0x0

    .line 467
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 469
    const/4 v0, 0x0

    .line 471
    .local v0, "count":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    if-nez v5, :cond_0

    const/16 v5, 0x64

    if-ge v0, v5, :cond_0

    .line 472
    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    .line 480
    .end local v0    # "count":I
    :cond_0
    const/4 v4, 0x0

    .line 481
    .local v4, "score":I
    iget-wide v2, p0, Lc8/Lrf;->mGpuFreq:J

    .line 482
    .local v2, "freq":J
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 483
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "Adreno"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 484
    const-string/jumbo v5, "\u9ad8\u901a"

    iput-object v5, p0, Lc8/Lrf;->mGpuBrand:Ljava/lang/String;

    .line 485
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "530"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "53"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "Adreno (TM) 5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "Adreno (TM) 6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 486
    :cond_1
    iget v5, p0, Lc8/Lrf;->mCpuMaxFreq:F

    cmpl-float v5, v5, v12

    if-lez v5, :cond_4

    .line 487
    const/16 v4, 0x14

    .line 488
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 489
    const-wide/16 v2, 0x270

    .line 849
    :cond_2
    :goto_1
    iget-wide v6, p0, Lc8/Lrf;->mGpuFreq:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    cmp-long v5, v2, v8

    if-lez v5, :cond_3

    .line 850
    iput-wide v2, p0, Lc8/Lrf;->mGpuFreq:J

    .line 852
    :cond_3
    iget-object v5, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-wide v6, p0, Lc8/Lrf;->mGpuFreq:J

    iput-wide v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->gpuMaxFreq:J

    .line 853
    return v4

    .line 490
    :cond_4
    iget v5, p0, Lc8/Lrf;->mCpuMinFreq:F

    const/high16 v6, 0x3fc00000    # 1.5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 492
    const/16 v4, 0x14

    .line 493
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 494
    const-wide/16 v2, 0x270

    goto :goto_1

    .line 496
    :cond_5
    const/16 v4, 0x13

    .line 497
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 498
    const-wide/16 v2, 0x1fe

    goto :goto_1

    .line 500
    :cond_6
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "430"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 501
    const/16 v4, 0x12

    .line 502
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 503
    const-wide/16 v2, 0x28a

    goto :goto_1

    .line 504
    :cond_7
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "420"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "418"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 505
    :cond_8
    const/16 v4, 0x10

    .line 506
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 507
    const-wide/16 v2, 0x258

    goto :goto_1

    .line 508
    :cond_9
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "510"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "506"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "505"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 509
    :cond_a
    const/16 v4, 0xf

    .line 510
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 511
    const-wide/16 v2, 0x1f4

    goto/16 :goto_1

    .line 512
    :cond_b
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "330"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 513
    iget v5, p0, Lc8/Lrf;->mCpuMaxFreq:F

    const v6, 0x40133333    # 2.3f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_c

    .line 515
    const/16 v4, 0xf

    .line 516
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 517
    const-wide/16 v2, 0x242

    goto/16 :goto_1

    .line 519
    :cond_c
    const/16 v4, 0xf

    .line 520
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 521
    const-wide/16 v2, 0x1c2

    goto/16 :goto_1

    .line 523
    :cond_d
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "405"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 524
    const/16 v4, 0xe

    .line 525
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 526
    const-wide/16 v2, 0x226

    goto/16 :goto_1

    .line 527
    :cond_e
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "320"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 528
    const/16 v4, 0xd

    .line 529
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 530
    const-wide/16 v2, 0x190

    goto/16 :goto_1

    .line 531
    :cond_f
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "225"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 532
    const/16 v4, 0xb

    .line 533
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 534
    const-wide/16 v2, 0x190

    goto/16 :goto_1

    .line 535
    :cond_10
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "305"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "306"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "308"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 536
    :cond_11
    const/16 v4, 0xa

    .line 537
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 538
    const-wide/16 v2, 0x190

    goto/16 :goto_1

    .line 539
    :cond_12
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "220"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 540
    const/16 v4, 0x8

    .line 541
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 542
    const-wide/16 v2, 0x10a

    goto/16 :goto_1

    .line 543
    :cond_13
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "205"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "203"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 544
    :cond_14
    const/4 v4, 0x6

    .line 545
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 546
    const-wide/16 v2, 0x10a

    goto/16 :goto_1

    .line 547
    :cond_15
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "200"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 548
    const/4 v4, 0x5

    .line 549
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 550
    const-wide/16 v2, 0x85

    goto/16 :goto_1

    .line 551
    :cond_16
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "Adreno 5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "Adreno 6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 552
    :cond_17
    const/16 v4, 0x14

    .line 553
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 554
    const-wide/16 v2, 0x270

    goto/16 :goto_1

    .line 555
    :cond_18
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "Adreno 4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 556
    const/16 v4, 0xe

    .line 557
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 558
    const-wide/16 v2, 0x1f4

    goto/16 :goto_1

    .line 559
    :cond_19
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "Adreno 3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 560
    const/16 v4, 0xa

    .line 561
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 562
    const-wide/16 v2, 0x190

    goto/16 :goto_1

    .line 565
    :cond_1a
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "Mali"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 566
    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "hardware":Ljava/lang/String;
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "400 MP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 570
    const/4 v4, 0x7

    .line 571
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 572
    const-wide/16 v2, 0x1c2

    goto/16 :goto_1

    .line 574
    :cond_1b
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "400"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 576
    const-wide/16 v6, 0x190

    cmp-long v5, v2, v6

    if-lez v5, :cond_1c

    .line 577
    const/4 v4, 0x5

    goto/16 :goto_1

    .line 578
    :cond_1c
    const-wide/16 v6, 0xc8

    cmp-long v5, v2, v6

    if-lez v5, :cond_1d

    .line 579
    const/4 v4, 0x4

    goto/16 :goto_1

    .line 581
    :cond_1d
    cmp-long v5, v2, v8

    if-nez v5, :cond_1e

    .line 582
    const-wide/16 v2, 0x10a

    .line 584
    :cond_1e
    const/4 v4, 0x4

    goto/16 :goto_1

    .line 586
    :cond_1f
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "450"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 588
    const-wide/16 v6, 0x28a

    cmp-long v5, v2, v6

    if-lez v5, :cond_20

    .line 589
    const/4 v4, 0x6

    goto/16 :goto_1

    .line 590
    :cond_20
    const-wide/16 v6, 0x226

    cmp-long v5, v2, v6

    if-lez v5, :cond_21

    .line 591
    const/4 v4, 0x5

    goto/16 :goto_1

    .line 593
    :cond_21
    cmp-long v5, v2, v8

    if-nez v5, :cond_22

    .line 594
    const-wide/16 v2, 0x258

    .line 596
    :cond_22
    const/4 v4, 0x5

    goto/16 :goto_1

    .line 598
    :cond_23
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "T624"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 599
    const/16 v4, 0xc

    .line 600
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 601
    const-wide/16 v2, 0x258

    goto/16 :goto_1

    .line 603
    :cond_24
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "T678"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 604
    const/16 v4, 0xf

    .line 605
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 606
    const-wide/16 v2, 0x258

    goto/16 :goto_1

    .line 608
    :cond_25
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "T628"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 610
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "5420"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 611
    const/16 v4, 0xe

    .line 612
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 613
    const-wide/16 v2, 0x215

    goto/16 :goto_1

    .line 615
    :cond_26
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "5422"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 616
    const/16 v4, 0xe

    .line 617
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 618
    const-wide/16 v2, 0x215

    goto/16 :goto_1

    .line 620
    :cond_27
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "5430"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_28

    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "5800"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 621
    :cond_28
    const/16 v4, 0xf

    .line 622
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 623
    const-wide/16 v2, 0x258

    goto/16 :goto_1

    .line 626
    :cond_29
    const/16 v4, 0xd

    .line 627
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 628
    const-wide/16 v2, 0x1f4

    goto/16 :goto_1

    .line 631
    :cond_2a
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "T604"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 632
    const/16 v4, 0x9

    .line 633
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 634
    const-wide/16 v2, 0x215

    goto/16 :goto_1

    .line 636
    :cond_2b
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "T760"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 637
    const-string/jumbo v5, "7420"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 638
    const/16 v4, 0x10

    .line 639
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 640
    const-wide/16 v2, 0x30e

    goto/16 :goto_1

    .line 642
    :cond_2c
    const-string/jumbo v5, "5433"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 643
    const/16 v4, 0xf

    .line 644
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 645
    const-wide/16 v2, 0x2bc

    goto/16 :goto_1

    .line 647
    :cond_2d
    const-string/jumbo v5, "MT667"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 648
    const/16 v4, 0xe

    .line 649
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 650
    const-wide/16 v2, 0x1f4

    goto/16 :goto_1

    .line 653
    :cond_2e
    const/16 v4, 0xe

    .line 654
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 655
    const-wide/16 v2, 0x1f4

    goto/16 :goto_1

    .line 658
    :cond_2f
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "T720"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 659
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "7580"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_30

    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "EXYNOS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 660
    :cond_30
    const/16 v4, 0xf

    .line 661
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 662
    const-wide/16 v2, 0x29c

    goto/16 :goto_1

    .line 664
    :cond_31
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT6675"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_32

    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT6753"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 665
    :cond_32
    const/16 v4, 0xe

    .line 666
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 667
    const-wide/16 v2, 0x2bc

    goto/16 :goto_1

    .line 669
    :cond_33
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT6673"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 670
    :cond_34
    const/16 v4, 0xd

    .line 671
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 672
    const-wide/16 v2, 0x190

    goto/16 :goto_1

    .line 675
    :cond_35
    const/16 v4, 0xc

    .line 676
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 677
    const-wide/16 v2, 0x258

    goto/16 :goto_1

    .line 680
    :cond_36
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "T880 MP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_37

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "T880"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 681
    :cond_37
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "EXYNOS88"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38

    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "EXYNOS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 682
    :cond_38
    const/16 v4, 0x12

    .line 683
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 684
    const-wide/16 v2, 0x28a

    goto/16 :goto_1

    .line 686
    :cond_39
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT679"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 687
    const/16 v4, 0x11

    .line 688
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 689
    const-wide/16 v2, 0x384

    goto/16 :goto_1

    .line 691
    :cond_3a
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT6797T"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 692
    const/16 v4, 0x10

    .line 693
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 694
    const-wide/16 v2, 0x352

    goto/16 :goto_1

    .line 696
    :cond_3b
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT679M"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 697
    const/16 v4, 0xf

    .line 698
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 699
    const-wide/16 v2, 0x2bc

    goto/16 :goto_1

    .line 701
    :cond_3c
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT6797"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 702
    const/16 v4, 0xf

    .line 703
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 704
    const-wide/16 v2, 0x30c

    goto/16 :goto_1

    .line 706
    :cond_3d
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT675"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 707
    const/16 v4, 0xd

    .line 708
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 709
    const-wide/16 v2, 0x384

    goto/16 :goto_1

    .line 711
    :cond_3e
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "HI36"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 712
    const/16 v4, 0x12

    .line 713
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 714
    const-wide/16 v2, 0x384

    goto/16 :goto_1

    .line 717
    :cond_3f
    const/16 v4, 0xe

    .line 718
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 719
    const-wide/16 v2, 0x2bc

    goto/16 :goto_1

    .line 722
    :cond_40
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "T860"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 723
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT66755"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_41

    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "EXYNOS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 724
    :cond_41
    const/16 v4, 0x11

    .line 725
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 726
    const-wide/16 v2, 0x2bc

    goto/16 :goto_1

    .line 728
    :cond_42
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT6675"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 729
    const/16 v4, 0xe

    .line 730
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 731
    const-wide/16 v2, 0x190

    goto/16 :goto_1

    .line 733
    :cond_43
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT673"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_44

    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 734
    :cond_44
    const/16 v4, 0xd

    .line 735
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 736
    const-wide/16 v2, 0x190

    goto/16 :goto_1

    .line 739
    :cond_45
    const/16 v4, 0xc

    .line 740
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 741
    const-wide/16 v2, 0x1f4

    goto/16 :goto_1

    .line 744
    :cond_46
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "T830"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 745
    const/16 v4, 0xf

    .line 746
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 747
    const-wide/16 v2, 0x1f4

    goto/16 :goto_1

    .line 750
    :cond_47
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "T820"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 751
    const/16 v4, 0xe

    .line 752
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 753
    const-wide/16 v2, 0x2bc

    goto/16 :goto_1

    .line 756
    :cond_48
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "G71"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "G72"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 757
    :cond_49
    const/16 v4, 0x14

    .line 758
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 759
    const-wide/16 v2, 0x352

    goto/16 :goto_1

    .line 764
    .end local v1    # "hardware":Ljava/lang/String;
    :cond_4a
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "PowerVR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 765
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "SGX 530"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 766
    const/4 v4, 0x4

    .line 767
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 768
    const-wide/16 v2, 0x64

    goto/16 :goto_1

    .line 769
    :cond_4b
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "SGX 535"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 770
    const/4 v4, 0x5

    .line 771
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 772
    const-wide/16 v2, 0x96

    goto/16 :goto_1

    .line 773
    :cond_4c
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "SGX 531"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 774
    const/4 v4, 0x6

    .line 775
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 776
    const-wide/16 v2, 0x118

    goto/16 :goto_1

    .line 777
    :cond_4d
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "SGX 544"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4e

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "SGX 543"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 778
    :cond_4e
    const/16 v4, 0x8

    .line 779
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 780
    const-wide/16 v2, 0x1e0

    goto/16 :goto_1

    .line 781
    :cond_4f
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "G6200"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_50

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "6200"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 782
    :cond_50
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT6795"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 783
    const/16 v4, 0xe

    .line 784
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 785
    const-wide/16 v2, 0x2bc

    goto/16 :goto_1

    .line 787
    :cond_51
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT6595M"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 788
    const/16 v4, 0xc

    .line 789
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 790
    const-wide/16 v2, 0x1c2

    goto/16 :goto_1

    .line 792
    :cond_52
    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "MT6595"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_53

    iget-object v5, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    const-string/jumbo v6, "6595T"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 793
    :cond_53
    const/16 v4, 0xd

    .line 794
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 795
    const-wide/16 v2, 0x258

    goto/16 :goto_1

    .line 798
    :cond_54
    const/16 v4, 0xd

    .line 799
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 800
    const-wide/16 v2, 0x258

    goto/16 :goto_1

    .line 803
    :cond_55
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "G6400"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_56

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "G6430"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_56

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "G6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_56

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 804
    :cond_56
    const/16 v4, 0xf

    .line 805
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 806
    const-wide/16 v2, 0x215

    goto/16 :goto_1

    .line 807
    :cond_57
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "6450"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_58

    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "7"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 808
    :cond_58
    const/16 v4, 0x11

    .line 809
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 810
    const-wide/16 v2, 0x215

    goto/16 :goto_1

    .line 812
    :cond_59
    const/16 v4, 0x8

    .line 813
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 814
    const-wide/16 v2, 0x1f4

    goto/16 :goto_1

    .line 816
    :cond_5a
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "NVIDIA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 817
    iget-object v5, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v5, v5, Lc8/msf;->mCpuMaxFreq:F

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_5b

    iget-object v5, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v5, v5, Lc8/msf;->mCpuProcessCount:S

    if-le v5, v10, :cond_5b

    .line 818
    const/16 v4, 0x10

    .line 819
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 820
    const-wide/16 v2, 0x3e8

    goto/16 :goto_1

    .line 822
    :cond_5b
    iget-object v5, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v5, v5, Lc8/msf;->mCpuMaxFreq:F

    const v6, 0x400ccccd    # 2.2f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5c

    iget-object v5, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v5, v5, Lc8/msf;->mCpuProcessCount:S

    if-lt v5, v10, :cond_5c

    .line 823
    const/16 v4, 0xe

    .line 824
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 825
    const-wide/16 v2, 0x339

    goto/16 :goto_1

    .line 827
    :cond_5c
    iget-object v5, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v5, v5, Lc8/msf;->mCpuMaxFreq:F

    cmpl-float v5, v5, v12

    if-ltz v5, :cond_5d

    iget-object v5, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v5, v5, Lc8/msf;->mCpuProcessCount:S

    if-lt v5, v10, :cond_5d

    .line 828
    const/16 v4, 0xc

    .line 829
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 830
    const-wide/16 v2, 0x294

    goto/16 :goto_1

    .line 832
    :cond_5d
    iget-object v5, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v5, v5, Lc8/msf;->mCpuMaxFreq:F

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_5e

    iget-object v5, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v5, v5, Lc8/msf;->mCpuProcessCount:S

    if-lt v5, v10, :cond_5e

    .line 833
    const/16 v4, 0xa

    .line 834
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 835
    const-wide/16 v2, 0x2a0

    goto/16 :goto_1

    .line 838
    :cond_5e
    const/16 v4, 0x8

    .line 839
    cmp-long v5, v2, v8

    if-nez v5, :cond_2

    .line 840
    const-wide/16 v2, 0x208

    goto/16 :goto_1

    .line 843
    :cond_5f
    iget-object v5, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    const-string/jumbo v6, "Android Emulator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 845
    const-wide/16 v2, 0x0

    .line 846
    const/16 v4, 0x10

    goto/16 :goto_1
.end method

.method getKgslFreq(Ljava/lang/String;)J
    .locals 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    .line 1165
    const-wide/16 v6, 0x0

    .line 1167
    .local v6, "freq":J
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1169
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1170
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1171
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_0

    .line 1206
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    :goto_0
    return-wide v10

    .line 1174
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "files":[Ljava/io/File;
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v12, v4

    if-ge v8, v12, :cond_2

    .line 1175
    aget-object v3, v4, v8

    .line 1176
    .local v3, "filename":Ljava/io/File;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "kgsl"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1177
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lc8/Lrf;->getKgslFreq(Ljava/lang/String;)J

    move-result-wide v6

    .line 1178
    cmp-long v12, v6, v10

    if-lez v12, :cond_1

    move-wide v10, v6

    .line 1179
    goto :goto_0

    .line 1174
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1184
    .end local v3    # "filename":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    .end local v8    # "i":I
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/max_freq"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1185
    .local v2, "fileFreq":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 1186
    new-instance v2, Ljava/io/File;

    .end local v2    # "fileFreq":Ljava/io/File;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/max_gpuclk"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1188
    .restart local v2    # "fileFreq":Ljava/io/File;
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1189
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 1190
    .local v5, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1191
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 1192
    .local v9, "textFreq":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 1193
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1194
    cmp-long v10, v6, v10

    if-lez v10, :cond_4

    .line 1195
    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12

    .line 1198
    :cond_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileFreq":Ljava/io/File;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v9    # "textFreq":Ljava/lang/String;
    :cond_5
    :goto_2
    move-wide v10, v6

    .line 1206
    goto/16 :goto_0

    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method public getMaxCpuFreq()F
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 317
    iget v8, p0, Lc8/Lrf;->mCpuMaxFreq:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_0

    iget-object v8, p0, Lc8/Lrf;->mCpuFreqArray:[F

    if-eqz v8, :cond_0

    .line 318
    iget v8, p0, Lc8/Lrf;->mCpuMaxFreq:F

    .line 364
    :goto_0
    return v8

    .line 320
    :cond_0
    iget-object v8, p0, Lc8/Lrf;->mCpuFreqArray:[F

    if-nez v8, :cond_1

    .line 321
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    new-array v8, v8, [F

    iput-object v8, p0, Lc8/Lrf;->mCpuFreqArray:[F

    .line 322
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v8, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v9, p0, Lc8/Lrf;->mCpuFreqArray:[F

    iput-object v9, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuFreqArray:[F

    .line 325
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    :try_start_0
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    if-ge v6, v8, :cond_5

    .line 326
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 330
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 331
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 333
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 335
    if-eqz v7, :cond_3

    .line 336
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 337
    .local v4, "freq":J
    long-to-float v8, v4

    const v9, 0x49742400    # 1000000.0f

    div-float v3, v8, v9

    .line 338
    .local v3, "freqMax":F
    iget-object v8, p0, Lc8/Lrf;->mCpuFreqArray:[F

    aput v3, v8, v6

    .line 339
    iget v8, p0, Lc8/Lrf;->mCpuMaxFreq:F

    cmpg-float v8, v8, v3

    if-gez v8, :cond_2

    .line 340
    iput v3, p0, Lc8/Lrf;->mCpuMaxFreq:F

    .line 342
    :cond_2
    iget v8, p0, Lc8/Lrf;->mCpuMinFreq:F

    cmpl-float v8, v8, v10

    if-nez v8, :cond_4

    .line 343
    iput v3, p0, Lc8/Lrf;->mCpuMinFreq:F

    .line 325
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v3    # "freqMax":F
    .end local v4    # "freq":J
    .end local v7    # "text":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 345
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "freqMax":F
    .restart local v4    # "freq":J
    .restart local v7    # "text":Ljava/lang/String;
    :cond_4
    iget v8, p0, Lc8/Lrf;->mCpuMinFreq:F

    cmpl-float v8, v8, v3

    if-lez v8, :cond_3

    .line 346
    iput v3, p0, Lc8/Lrf;->mCpuMinFreq:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v3    # "freqMax":F
    .end local v4    # "freq":J
    .end local v7    # "text":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 355
    :cond_5
    iget v8, p0, Lc8/Lrf;->mCpuMinFreq:F

    cmpl-float v8, v8, v10

    if-nez v8, :cond_6

    .line 356
    iget v8, p0, Lc8/Lrf;->mCpuMaxFreq:F

    iput v8, p0, Lc8/Lrf;->mCpuMinFreq:F

    .line 358
    :cond_6
    iget-object v8, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v8, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v9, p0, Lc8/Lrf;->mCpuMinFreq:F

    iput v9, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuMinFreq:F

    .line 359
    iget-boolean v8, p0, Lc8/Lrf;->mIsGpuFileExist:Z

    if-eqz v8, :cond_7

    .line 360
    const/4 v8, 0x0

    iput-boolean v8, p0, Lc8/Lrf;->mIsGpuFileExist:Z

    .line 361
    invoke-virtual {p0}, Lc8/Lrf;->saveCpuAndGpuInfo()V

    .line 364
    :cond_7
    iget v8, p0, Lc8/Lrf;->mCpuMaxFreq:F

    goto/16 :goto_0
.end method

.method public getMaxGpuFreq()J
    .locals 2

    .prologue
    .line 1090
    iget-wide v0, p0, Lc8/Lrf;->mGpuFreq:J

    return-wide v0
.end method

.method public getMemoryLimitScore()I
    .locals 6

    .prologue
    const/16 v5, 0x80

    const/16 v4, 0x100

    .line 443
    const/4 v0, 0x1

    .local v0, "limitScore1":I
    const/4 v1, 0x4

    .line 445
    .local v1, "limitScore2":I
    iget-object v2, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v2, v2, Lc8/msf;->mJavaHeapLimitMemory:I

    if-le v2, v4, :cond_2

    .line 446
    const/16 v1, 0xa

    .line 456
    :cond_0
    :goto_0
    iget-object v2, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v2, v2, Lc8/msf;->mJavaHeapLimitLargeMemory:I

    const/16 v3, 0x200

    if-lt v2, v3, :cond_6

    .line 457
    const/16 v0, 0xa

    .line 463
    :cond_1
    :goto_1
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    return v2

    .line 447
    :cond_2
    iget-object v2, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v2, v2, Lc8/msf;->mJavaHeapLimitMemory:I

    if-lt v2, v4, :cond_3

    .line 448
    const/16 v1, 0x8

    goto :goto_0

    .line 449
    :cond_3
    iget-object v2, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v2, v2, Lc8/msf;->mJavaHeapLimitMemory:I

    const/16 v3, 0xc0

    if-lt v2, v3, :cond_4

    .line 450
    const/4 v1, 0x7

    goto :goto_0

    .line 451
    :cond_4
    iget-object v2, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v2, v2, Lc8/msf;->mJavaHeapLimitMemory:I

    if-lt v2, v5, :cond_5

    .line 452
    const/4 v1, 0x5

    goto :goto_0

    .line 453
    :cond_5
    iget-object v2, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v2, v2, Lc8/msf;->mJavaHeapLimitMemory:I

    const/16 v3, 0x60

    if-lt v2, v3, :cond_0

    .line 454
    const/4 v1, 0x3

    goto :goto_0

    .line 458
    :cond_6
    iget-object v2, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v2, v2, Lc8/msf;->mJavaHeapLimitLargeMemory:I

    if-lt v2, v4, :cond_7

    .line 459
    const/16 v0, 0x8

    goto :goto_1

    .line 460
    :cond_7
    iget-object v2, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v2, v2, Lc8/msf;->mJavaHeapLimitLargeMemory:I

    if-lt v2, v5, :cond_1

    .line 461
    const/4 v0, 0x6

    goto :goto_1
.end method

.method public getScreenScore()I
    .locals 8

    .prologue
    const v7, 0x1fa400

    const v6, 0xe1000

    const/high16 v5, 0x40000000    # 2.0f

    .line 395
    iget v3, p0, Lc8/Lrf;->mWidth:I

    if-eqz v3, :cond_0

    iget v3, p0, Lc8/Lrf;->mHeight:I

    if-nez v3, :cond_1

    .line 396
    :cond_0
    const/4 v3, 0x5

    .line 439
    :goto_0
    return v3

    .line 400
    :cond_1
    iget v3, p0, Lc8/Lrf;->mDesty:F

    const v4, 0x3fb33333    # 1.4f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 401
    const/high16 v2, 0x3f800000    # 1.0f

    .line 417
    .local v2, "destyScore":F
    :goto_1
    iget v3, p0, Lc8/Lrf;->mWidth:I

    iget v4, p0, Lc8/Lrf;->mHeight:I

    mul-int v0, v3, v4

    .line 419
    .local v0, "area":I
    const/high16 v3, 0x870000

    if-lt v0, v3, :cond_9

    .line 421
    const/high16 v1, 0x41200000    # 10.0f

    .line 439
    .local v1, "areaScore":F
    :goto_2
    add-float v3, v2, v1

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_0

    .line 402
    .end local v0    # "area":I
    .end local v1    # "areaScore":F
    .end local v2    # "destyScore":F
    :cond_2
    iget v3, p0, Lc8/Lrf;->mDesty:F

    const/high16 v4, 0x3fc00000    # 1.5f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    .line 403
    const/high16 v2, 0x40000000    # 2.0f

    .restart local v2    # "destyScore":F
    goto :goto_1

    .line 404
    .end local v2    # "destyScore":F
    :cond_3
    iget v3, p0, Lc8/Lrf;->mDesty:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4

    .line 405
    const/high16 v2, 0x40800000    # 4.0f

    .restart local v2    # "destyScore":F
    goto :goto_1

    .line 406
    .end local v2    # "destyScore":F
    :cond_4
    iget v3, p0, Lc8/Lrf;->mDesty:F

    const/high16 v4, 0x40200000    # 2.5f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    .line 407
    const/high16 v2, 0x40a00000    # 5.0f

    .restart local v2    # "destyScore":F
    goto :goto_1

    .line 408
    .end local v2    # "destyScore":F
    :cond_5
    iget v3, p0, Lc8/Lrf;->mDesty:F

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_6

    .line 409
    const/high16 v2, 0x40c00000    # 6.0f

    .restart local v2    # "destyScore":F
    goto :goto_1

    .line 410
    .end local v2    # "destyScore":F
    :cond_6
    iget v3, p0, Lc8/Lrf;->mDesty:F

    const/high16 v4, 0x40e00000    # 7.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_7

    .line 411
    const/high16 v2, 0x41000000    # 8.0f

    .restart local v2    # "destyScore":F
    goto :goto_1

    .line 412
    .end local v2    # "destyScore":F
    :cond_7
    iget v3, p0, Lc8/Lrf;->mDesty:F

    const/high16 v4, 0x40800000    # 4.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_8

    .line 413
    const/high16 v2, 0x41100000    # 9.0f

    .restart local v2    # "destyScore":F
    goto :goto_1

    .line 415
    .end local v2    # "destyScore":F
    :cond_8
    const/high16 v2, 0x41200000    # 10.0f

    .restart local v2    # "destyScore":F
    goto :goto_1

    .line 422
    .restart local v0    # "area":I
    :cond_9
    const v3, 0x384000

    if-lt v0, v3, :cond_a

    .line 423
    const/high16 v1, 0x41100000    # 9.0f

    .restart local v1    # "areaScore":F
    goto :goto_2

    .line 424
    .end local v1    # "areaScore":F
    :cond_a
    if-le v0, v7, :cond_b

    .line 425
    const/high16 v1, 0x41000000    # 8.0f

    .restart local v1    # "areaScore":F
    goto :goto_2

    .line 426
    .end local v1    # "areaScore":F
    :cond_b
    if-ne v0, v7, :cond_c

    .line 427
    const/high16 v1, 0x40e00000    # 7.0f

    .restart local v1    # "areaScore":F
    goto :goto_2

    .line 428
    .end local v1    # "areaScore":F
    :cond_c
    if-le v0, v6, :cond_d

    .line 429
    const/high16 v1, 0x40c00000    # 6.0f

    .restart local v1    # "areaScore":F
    goto :goto_2

    .line 430
    .end local v1    # "areaScore":F
    :cond_d
    if-lt v0, v6, :cond_e

    .line 431
    const/high16 v1, 0x40a00000    # 5.0f

    .restart local v1    # "areaScore":F
    goto :goto_2

    .line 432
    .end local v1    # "areaScore":F
    :cond_e
    const/high16 v3, 0xc0000

    if-lt v0, v3, :cond_f

    .line 433
    const/high16 v1, 0x40800000    # 4.0f

    .restart local v1    # "areaScore":F
    goto/16 :goto_2

    .line 434
    .end local v1    # "areaScore":F
    :cond_f
    const v3, 0x96000

    if-lt v0, v3, :cond_10

    .line 435
    const/high16 v1, 0x40400000    # 3.0f

    .restart local v1    # "areaScore":F
    goto/16 :goto_2

    .line 437
    .end local v1    # "areaScore":F
    :cond_10
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "areaScore":F
    goto/16 :goto_2
.end method

.method public saveCpuAndGpuInfo()V
    .locals 8

    .prologue
    .line 215
    iget-boolean v6, p0, Lc8/Lrf;->mIsGpuFileExist:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x0

    .line 219
    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    const/4 v6, 0x1

    iput-boolean v6, p0, Lc8/Lrf;->mIsGpuFileExist:Z

    .line 220
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lc8/Lrf;->mFileGPUinfo:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 222
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 225
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .local v1, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_1
    iget-object v6, p0, Lc8/Lrf;->mCpuBrand:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 228
    iget-object v6, p0, Lc8/Lrf;->mCpuName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 230
    iget v6, p0, Lc8/Lrf;->mCpuCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 232
    iget v6, p0, Lc8/Lrf;->mCpuMaxFreq:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 234
    iget-object v6, p0, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 236
    iget-object v6, p0, Lc8/Lrf;->mGpuBrand:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 238
    iget-wide v6, p0, Lc8/Lrf;->mGpuFreq:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 240
    iget-object v6, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget v6, v6, Lc8/msf;->mStatusBarHeight:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 242
    iget v6, p0, Lc8/Lrf;->mCpuMinFreq:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x32

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 245
    .local v5, "textCpuAry":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lc8/Lrf;->mCpuFreqArray:[F

    if-eqz v6, :cond_4

    iget-object v6, p0, Lc8/Lrf;->mCpuFreqArray:[F

    array-length v6, v6

    if-lez v6, :cond_4

    .line 246
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v6, p0, Lc8/Lrf;->mCpuFreqArray:[F

    array-length v6, v6

    if-ge v4, v6, :cond_4

    .line 247
    iget-object v6, p0, Lc8/Lrf;->mCpuFreqArray:[F

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 248
    iget-object v6, p0, Lc8/Lrf;->mCpuFreqArray:[F

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_3

    .line 249
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 253
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 255
    iget-object v6, p0, Lc8/Lrf;->mOnLineMonitor:Lc8/msf;

    iget-object v6, v6, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuArch:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    if-eqz v1, :cond_0

    .line 264
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 265
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 267
    :catch_0
    move-exception v2

    .line 268
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 257
    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v5    # "textCpuAry":Ljava/lang/StringBuilder;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    .line 258
    .local v2, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    const/4 v6, 0x0

    iput-boolean v6, p0, Lc8/Lrf;->mIsGpuFileExist:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    if-eqz v0, :cond_0

    .line 264
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 265
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 267
    :catch_2
    move-exception v2

    .line 268
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 262
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 263
    :goto_3
    if-eqz v0, :cond_5

    .line 264
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 265
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 269
    :cond_5
    :goto_4
    throw v6

    .line 267
    :catch_3
    move-exception v2

    .line 268
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 262
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 257
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    goto :goto_2
.end method
