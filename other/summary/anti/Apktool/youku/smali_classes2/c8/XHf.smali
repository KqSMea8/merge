.class public Lc8/XHf;
.super Lc8/THf;
.source "LogFileUploaderImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/WHf;,
        Lc8/VHf;
    }
.end annotation


# static fields
.field private static final BIZCODE:Ljava/lang/String; = "motu-debug-log"

.field private static final INSTANCE:Lc8/XHf;

.field private static final TAG:Ljava/lang/String; = "TLog.LogFileUploaderImp"


# instance fields
.field private mParmas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Lc8/qsg;

.field private mUploadManager:Lc8/osg;

.field private metaInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lc8/XHf;

    invoke-direct {v0}, Lc8/XHf;-><init>()V

    sput-object v0, Lc8/XHf;->INSTANCE:Lc8/XHf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/THf;-><init>()V

    .line 181
    return-void
.end method

.method public static getInstance()Lc8/XHf;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lc8/XHf;->INSTANCE:Lc8/XHf;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lc8/XHf;->mTask:Lc8/qsg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/XHf;->mUploadManager:Lc8/osg;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lc8/XHf;->mUploadManager:Lc8/osg;

    iget-object v1, p0, Lc8/XHf;->mTask:Lc8/qsg;

    invoke-interface {v0, v1}, Lc8/osg;->cancelAsync(Lc8/qsg;)Z

    .line 124
    :cond_0
    return-void
.end method

.method public setMetaInfo(Ljava/util/Map;)Lc8/XHf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lc8/XHf;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lc8/XHf;->metaInfo:Ljava/util/Map;

    .line 47
    sget-object v0, Lc8/XHf;->INSTANCE:Lc8/XHf;

    return-object v0
.end method

.method public setParams(Ljava/util/Map;)Lc8/XHf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/XHf;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/XHf;->mParmas:Ljava/util/Map;

    .line 42
    sget-object v0, Lc8/XHf;->INSTANCE:Lc8/XHf;

    return-object v0
.end method

.method public startUpload(Ljava/lang/String;Lc8/PHf;)V
    .locals 15
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/PHf;

    .prologue
    .line 55
    invoke-static {}, Lc8/ssg;->get()Lc8/osg;

    move-result-object v1

    iput-object v1, p0, Lc8/XHf;->mUploadManager:Lc8/osg;

    .line 56
    iget-object v1, p0, Lc8/XHf;->mUploadManager:Lc8/osg;

    invoke-interface {v1}, Lc8/osg;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    new-instance v11, Lc8/UHf;

    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v11, p0, v1}, Lc8/UHf;-><init>(Lc8/XHf;Landroid/content/Context;)V

    .line 75
    .local v11, "environment":Lc8/lsg;
    iget-object v1, p0, Lc8/XHf;->mUploadManager:Lc8/osg;

    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lc8/Ftg;

    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v11}, Lc8/Ftg;-><init>(Landroid/content/Context;Lc8/lsg;)V

    invoke-interface {v1, v2, v3}, Lc8/osg;->initialize(Landroid/content/Context;Lc8/jsg;)Z

    .line 78
    .end local v11    # "environment":Lc8/lsg;
    :cond_0
    new-instance v13, Lc8/WHf;

    invoke-direct {v13, p0}, Lc8/WHf;-><init>(Lc8/XHf;)V

    .line 79
    .local v13, "task":Lc8/WHf;
    const-string/jumbo v1, "motu-debug-log"

    iput-object v1, v13, Lc8/WHf;->bizType:Ljava/lang/String;

    .line 80
    const-string/jumbo v1, ".log"

    iput-object v1, v13, Lc8/WHf;->fileType:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lc8/XHf;->metaInfo:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 82
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v7, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "action"

    iget-object v2, p0, Lc8/XHf;->metaInfo:Ljava/util/Map;

    invoke-static {v2}, Lc8/AIb;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iput-object v7, v13, Lc8/WHf;->metaInfo:Ljava/util/Map;

    .line 87
    .end local v7    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v9, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/EHf;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v9, "dirs":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_2
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v12, "src":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12, v1}, Lc8/IHf;->copyFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 94
    .local v8, "dest":Ljava/io/File;
    const/4 v14, 0x0

    .line 95
    .local v14, "zipFilePath":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 96
    invoke-virtual {p0, v8}, Lc8/XHf;->zipFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    .line 98
    :cond_3
    if-eqz v14, :cond_4

    .line 99
    iput-object v14, v13, Lc8/WHf;->filePath:Ljava/lang/String;

    .line 105
    :goto_0
    iput-object v13, p0, Lc8/XHf;->mTask:Lc8/qsg;

    .line 106
    iget-object v1, v13, Lc8/WHf;->filePath:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v0}, Lc8/XHf;->upload(Ljava/lang/String;Lc8/PHf;)V

    .line 110
    .end local v8    # "dest":Ljava/io/File;
    .end local v14    # "zipFilePath":Ljava/lang/String;
    :goto_1
    return-void

    .line 101
    .restart local v8    # "dest":Ljava/io/File;
    .restart local v14    # "zipFilePath":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    iput-object v0, v13, Lc8/WHf;->filePath:Ljava/lang/String;

    .line 102
    const v1, 0xfffe

    const-string/jumbo v2, ""

    const-string/jumbo v3, "7"

    iget-object v4, p0, Lc8/XHf;->mParmas:Ljava/util/Map;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    .end local v8    # "dest":Ljava/io/File;
    .end local v14    # "zipFilePath":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 108
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public upload(Ljava/lang/String;Lc8/PHf;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/PHf;

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "the file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is addTask to the uploader thread!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lc8/XHf;->mUploadManager:Lc8/osg;

    iget-object v1, p0, Lc8/XHf;->mTask:Lc8/qsg;

    new-instance v2, Lc8/VHf;

    invoke-direct {v2, p0, p2}, Lc8/VHf;-><init>(Lc8/XHf;Lc8/PHf;)V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lc8/osg;->uploadAsync(Lc8/qsg;Lc8/hsg;Landroid/os/Handler;)Z

    .line 117
    return-void
.end method
