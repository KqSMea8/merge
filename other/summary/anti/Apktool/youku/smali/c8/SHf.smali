.class public Lc8/SHf;
.super Ljava/lang/Object;
.source "LogFileUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/RHf;
    }
.end annotation


# static fields
.field private static final RENAME_FILE:I = 0x4

.field private static TAG:Ljava/lang/String; = null

.field private static final UPLOAD_CANCEL:I = 0x3

.field private static final UPLOAD_FINISH:I = 0x2

.field private static instances:Lc8/SHf;


# instance fields
.field private isForceUpload:Z

.field private isUploading:Z

.field private mContext:Landroid/content/Context;

.field private mExtData:Lcom/alibaba/fastjson/JSONObject;

.field private mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

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

.field private mType:Ljava/lang/String;

.field private mUploaderImp:Lc8/THf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "TLog.LogFileUploadManager"

    sput-object v0, Lc8/SHf;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lc8/SHf;->isUploading:Z

    .line 35
    iput-boolean v0, p0, Lc8/SHf;->isForceUpload:Z

    .line 37
    const-string/jumbo v0, "server"

    iput-object v0, p0, Lc8/SHf;->mType:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/SHf;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/SHf;->mFiles:Ljava/util/List;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lc8/SHf;)Z
    .locals 1
    .param p0, "x0"    # Lc8/SHf;

    .prologue
    .line 24
    invoke-direct {p0}, Lc8/SHf;->checkNetworkIsWifi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lc8/SHf;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/SHf;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/SHf;->mFiles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lc8/SHf;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/SHf;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/SHf;->mParmas:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lc8/SHf;)Lc8/THf;
    .locals 1
    .param p0, "x0"    # Lc8/SHf;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/SHf;->mUploaderImp:Lc8/THf;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lc8/SHf;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lc8/SHf;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/SHf;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/SHf;->finish(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lc8/SHf;)V
    .locals 0
    .param p0, "x0"    # Lc8/SHf;

    .prologue
    .line 24
    invoke-direct {p0}, Lc8/SHf;->remotePersistTask()V

    return-void
.end method

.method static synthetic access$700(Lc8/SHf;)V
    .locals 0
    .param p0, "x0"    # Lc8/SHf;

    .prologue
    .line 24
    invoke-direct {p0}, Lc8/SHf;->persistTask()V

    return-void
.end method

.method static synthetic access$800(Lc8/SHf;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/SHf;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/SHf;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkNetworkIsWifi()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 254
    iget-boolean v3, p0, Lc8/SHf;->isForceUpload:Z

    if-eqz v3, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v2

    .line 257
    :cond_1
    iget-object v3, p0, Lc8/SHf;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 258
    .local v0, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 259
    .local v1, "state":Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v3, :cond_0

    .line 262
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private finish(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "flag"    # Z
    .param p3, "errCode"    # Ljava/lang/String;
    .param p4, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lc8/SHf;->mFiles:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lc8/SHf;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/SHf;->uploadFinish(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 195
    if-eqz p2, :cond_1

    iget-object v0, p0, Lc8/SHf;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lc8/SHf;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lc8/SHf;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 200
    :cond_1
    sget-object v0, Lc8/SHf;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and quit the handlerThread!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/wHf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/SHf;->isForceUpload:Z

    .line 202
    new-instance v0, Ljava/io/File;

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

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc8/IHf;->clearDir(Ljava/io/File;)Z

    .line 203
    return-void
.end method

.method public static getInstances(Landroid/content/Context;)Lc8/SHf;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v0, Lc8/SHf;->instances:Lc8/SHf;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lc8/SHf;

    invoke-direct {v0, p0}, Lc8/SHf;-><init>(Landroid/content/Context;)V

    .line 56
    sput-object v0, Lc8/SHf;->instances:Lc8/SHf;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/SHf;->instances:Lc8/SHf;

    goto :goto_0
.end method

.method private getPrefixName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    const-string/jumbo v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 347
    .local v0, "index":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    .line 350
    .end local v0    # "index":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "tlog_uploadfiles"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lc8/SHf;->mHandlerThread:Landroid/os/HandlerThread;

    .line 71
    iget-object v0, p0, Lc8/SHf;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v0, Lc8/QHf;

    iget-object v1, p0, Lc8/SHf;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/QHf;-><init>(Lc8/SHf;Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/SHf;->mHandler:Landroid/os/Handler;

    .line 139
    return-void
.end method

.method private persistTask()V
    .locals 8

    .prologue
    .line 210
    sget-object v5, Lc8/SHf;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[persistTask] there is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/SHf;->mFiles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " task!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/wHf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 212
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 214
    .local v4, "taskFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lc8/SHf;->mFiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 215
    .local v3, "size":I
    if-gtz v3, :cond_0

    .line 230
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 218
    iget-object v5, p0, Lc8/SHf;->mFiles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    :cond_1
    const-string/jumbo v5, "tlog_upload_files"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 221
    const-string/jumbo v6, "userId"

    iget-object v5, p0, Lc8/SHf;->mParmas:Ljava/util/Map;

    if-nez v5, :cond_3

    const-string/jumbo v5, ""

    :goto_2
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    const-string/jumbo v6, "serviceId"

    iget-object v5, p0, Lc8/SHf;->mParmas:Ljava/util/Map;

    if-nez v5, :cond_4

    const-string/jumbo v5, ""

    :goto_3
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    const-string/jumbo v6, "serialNumber"

    iget-object v5, p0, Lc8/SHf;->mParmas:Ljava/util/Map;

    if-nez v5, :cond_5

    const-string/jumbo v5, ""

    :goto_4
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    const-string/jumbo v6, "taskId"

    iget-object v5, p0, Lc8/SHf;->mParmas:Ljava/util/Map;

    if-nez v5, :cond_6

    const-string/jumbo v5, ""

    :goto_5
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    const-string/jumbo v5, "tlog_upload_type"

    iget-object v6, p0, Lc8/SHf;->mType:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    iget-object v5, p0, Lc8/SHf;->mExtData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_2

    .line 227
    const-string/jumbo v5, "tlog_upload_extdata"

    iget-object v6, p0, Lc8/SHf;->mExtData:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 221
    :cond_3
    iget-object v5, p0, Lc8/SHf;->mParmas:Ljava/util/Map;

    const-string/jumbo v7, "userId"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    .line 222
    :cond_4
    iget-object v5, p0, Lc8/SHf;->mParmas:Ljava/util/Map;

    const-string/jumbo v7, "serviceId"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    .line 223
    :cond_5
    iget-object v5, p0, Lc8/SHf;->mParmas:Ljava/util/Map;

    const-string/jumbo v7, "serialNumber"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_4

    .line 224
    :cond_6
    iget-object v5, p0, Lc8/SHf;->mParmas:Ljava/util/Map;

    const-string/jumbo v7, "taskId"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_5
.end method

.method private remotePersistTask()V
    .locals 3

    .prologue
    .line 236
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 237
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "tlog_upload_files"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    const-string/jumbo v2, "userId"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    const-string/jumbo v2, "serviceId"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    const-string/jumbo v2, "serialNumber"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    const-string/jumbo v2, "taskId"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    const-string/jumbo v2, "tlog_upload_type"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 244
    const-string/jumbo v2, "tlog_upload_extdata"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const-string/jumbo v2, "tlog_upload_extdata"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    return-void
.end method


# virtual methods
.method public actionUpload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p4, "desciption"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 282
    if-nez p1, :cond_1

    .line 283
    sget-object v3, Lc8/zHf;->FILE_PREFIX:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lc8/IHf;->getFilePath(Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 288
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 289
    .local v2, "metaInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "utdid"

    invoke-static {}, Lc8/EHf;->getUTDID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string/jumbo v3, "platform"

    const-string/jumbo v4, "android"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "client"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string/jumbo v3, "uploadtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string/jumbo v3, "fileName"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 296
    .local v0, "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "action"

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string/jumbo v3, "des"

    invoke-interface {v0, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string/jumbo v3, "data"

    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string/jumbo v3, "data"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 303
    invoke-static {}, Lc8/XHf;->getInstance()Lc8/XHf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/XHf;->setMetaInfo(Ljava/util/Map;)Lc8/XHf;

    move-result-object v4

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lc8/RHf;

    invoke-direct {v5, p0, p1}, Lc8/RHf;-><init>(Lc8/SHf;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Lc8/XHf;->startUpload(Ljava/lang/String;Lc8/PHf;)V

    .line 306
    :cond_0
    return-void

    .line 285
    .end local v0    # "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "metaInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-static {p1, v4, v5}, Lc8/IHf;->getFilePath(Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .restart local v1    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public addFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lc8/SHf;->mFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    return-void
.end method

.method public addFiles(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 144
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lc8/SHf;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public cancelUploadTask()V
    .locals 2

    .prologue
    .line 316
    iget-boolean v0, p0, Lc8/SHf;->isUploading:Z

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lc8/SHf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lc8/SHf;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 319
    sget-object v0, Lc8/SHf;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " The thread isAlive!"

    invoke-static {v0, v1}, Lc8/wHf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_0
    sget-object v0, Lc8/SHf;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "The ConnectionChangeReceiver to sendEmptyMessage(UPLOAD_CANCEL)"

    invoke-static {v0, v1}, Lc8/wHf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_1
    return-void
.end method

.method public flushFinish(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lc8/SHf;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/SHf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lc8/SHf;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/SHf;->isUploading:Z

    .line 313
    :cond_0
    return-void
.end method

.method public getUploadTaskCount()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lc8/SHf;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isForceUpload(Z)V
    .locals 0
    .param p1, "isForce"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lc8/SHf;->isForceUpload:Z

    .line 251
    return-void
.end method

.method public isUploading()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lc8/SHf;->isUploading:Z

    return v0
.end method

.method public renameFileNotification(ZLjava/lang/String;)V
    .locals 9
    .param p1, "result"    # Z
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 332
    if-nez p1, :cond_0

    .line 333
    const v1, 0xfffe

    const-string/jumbo v2, ""

    const-string/jumbo v3, "6"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rename file failed : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lc8/SHf;->mParmas:Ljava/util/Map;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lc8/SHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/alibaba/fastjson/JSONObject;

    .line 336
    :cond_0
    iget-object v0, p0, Lc8/SHf;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/SHf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 338
    .local v8, "msg":Landroid/os/Message;
    const/4 v0, 0x4

    iput v0, v8, Landroid/os/Message;->what:I

    .line 339
    iput-object p2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lc8/SHf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    .end local v8    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/alibaba/fastjson/JSONObject;
    .locals 9
    .param p1, "commandId"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "errCode"    # Ljava/lang/String;
    .param p4, "errMsg"    # Ljava/lang/String;
    .param p7, "flag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .prologue
    .line 409
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "fileInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lc8/SHf;->mExtData:Lcom/alibaba/fastjson/JSONObject;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lc8/SHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 12
    .param p1, "commandId"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "errCode"    # Ljava/lang/String;
    .param p4, "errMsg"    # Ljava/lang/String;
    .param p7, "flag"    # Z
    .param p8, "extData"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .prologue
    .line 414
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "fileInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 416
    .local v5, "response":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "version"

    const-string/jumbo v2, "1.0"

    invoke-virtual {v5, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string/jumbo v1, "appkey"

    invoke-static {}, Lc8/EHf;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string/jumbo v1, "appVersion"

    invoke-static {}, Lc8/EHf;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string/jumbo v1, "command"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    if-eqz p6, :cond_1

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 423
    new-instance v7, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 424
    .local v7, "data":Lcom/alibaba/fastjson/JSONArray;
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 425
    .local v8, "dataChild":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 426
    .local v11, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 428
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 430
    .local v10, "key":Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v10, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 432
    .end local v10    # "key":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lc8/SHf;->mType:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string/jumbo v1, "extData"

    move-object/from16 v0, p8

    invoke-virtual {v8, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string/jumbo v1, "content"

    invoke-virtual {v8, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 436
    const-string/jumbo v1, "data"

    invoke-virtual {v5, v1, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .end local v7    # "data":Lcom/alibaba/fastjson/JSONArray;
    .end local v8    # "dataChild":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    const-string/jumbo v1, "session"

    const-string/jumbo v2, "session"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string/jumbo v1, "errCode"

    invoke-virtual {v5, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string/jumbo v1, "user"

    invoke-static {}, Lc8/EHf;->getUserNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string/jumbo v1, "errMsg"

    move-object/from16 v0, p4

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string/jumbo v2, "serialNumber"

    const-string/jumbo v1, "serialNumber"

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string/jumbo v1, "success"

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string/jumbo v1, "deviceId"

    invoke-static {}, Lc8/EHf;->getUTDID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string/jumbo v2, "taskId"

    const-string/jumbo v1, "taskId"

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-static {}, Lc8/OHf;->getInstance()Lc8/OHf;

    move-result-object v1

    iget-object v2, p0, Lc8/SHf;->mContext:Landroid/content/Context;

    if-nez p5, :cond_2

    const-string/jumbo v3, ""

    :goto_2
    if-nez p5, :cond_3

    const-string/jumbo v4, ""

    :goto_3
    if-nez p5, :cond_4

    const-string/jumbo v6, ""

    :goto_4
    invoke-virtual/range {v1 .. v6}, Lc8/OHf;->sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    .line 457
    return-object v5

    .line 438
    :cond_1
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 439
    .local v7, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lc8/SHf;->mType:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string/jumbo v1, "extData"

    move-object/from16 v0, p8

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string/jumbo v1, "content"

    invoke-virtual {v7, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string/jumbo v1, "data"

    invoke-virtual {v5, v1, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 456
    .end local v7    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const-string/jumbo v3, "userId"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string/jumbo v4, "serviceId"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string/jumbo v6, "taskId"

    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4
.end method

.method public sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Lcom/alibaba/fastjson/JSONObject;
    .locals 8
    .param p1, "commandId"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "errMsg"    # Ljava/lang/String;
    .param p5, "flag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .prologue
    .line 402
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "0"

    .line 403
    .local v3, "code":Ljava/lang/String;
    if-nez p5, :cond_0

    .line 404
    const-string/jumbo v3, "1"

    .line 405
    :cond_0
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lc8/SHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public setExtData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 157
    iput-object p1, p0, Lc8/SHf;->mExtData:Lcom/alibaba/fastjson/JSONObject;

    .line 158
    return-void
.end method

.method public setExtData(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_1

    .line 162
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 163
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 164
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 165
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    iput-object v1, p0, Lc8/SHf;->mExtData:Lcom/alibaba/fastjson/JSONObject;

    .line 171
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public setLogFileUploader(Lc8/THf;)V
    .locals 0
    .param p1, "logFileUploader"    # Lc8/THf;

    .prologue
    .line 182
    iput-object p1, p0, Lc8/SHf;->mUploaderImp:Lc8/THf;

    .line 183
    return-void
.end method

.method public setReportParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/SHf;->mParmas:Ljava/util/Map;

    .line 179
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lc8/SHf;->mType:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public startUpload()V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lc8/SHf;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 271
    iget-object v0, p0, Lc8/SHf;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/SHf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    :cond_0
    invoke-direct {p0}, Lc8/SHf;->init()V

    .line 274
    :cond_1
    invoke-static {}, Lc8/eIf;->getInstance()Lc8/eIf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/eIf;->flushBuffer()V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_2
    const-string/jumbo v0, "There is not files to upload!"

    const/4 v1, 0x0

    const-string/jumbo v2, "3"

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v1, v2, v3}, Lc8/SHf;->uploadFinish(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public uploadFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "errType"    # Ljava/lang/String;
    .param p3, "errCode"    # Ljava/lang/String;
    .param p4, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 355
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 356
    .local v6, "fileInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "fileName"

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    if-eqz p1, :cond_0

    .line 358
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    const-string/jumbo v0, "size"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .end local v8    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    const-string/jumbo v0, "tfsPatch"

    const-string/jumbo v1, ""

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string/jumbo v0, "errType"

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string/jumbo v0, "errCode"

    invoke-interface {v6, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string/jumbo v0, "errMsg"

    invoke-interface {v6, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const/4 v1, 0x2

    const-string/jumbo v2, "mtop upload failed!"

    const-string/jumbo v3, "8"

    const-string/jumbo v4, ""

    iget-object v5, p0, Lc8/SHf;->mParmas:Ljava/util/Map;

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lc8/SHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/alibaba/fastjson/JSONObject;

    .line 370
    const-string/jumbo v0, "tlog_monitor_module"

    const-string/jumbo v1, "file_upload_failed"

    invoke-static {v0, v1, p3, p4, p1}, Lc8/FHf;->uploadFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void

    .line 362
    .restart local v8    # "file":Ljava/io/File;
    :cond_1
    const-string/jumbo v0, "size"

    const-string/jumbo v1, "0"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public uploadFinish(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "flag"    # Z
    .param p3, "errCode"    # Ljava/lang/String;
    .param p4, "errMsg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 387
    if-eqz p1, :cond_1

    .line 388
    if-nez p2, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    move-object p4, p1

    .line 391
    :cond_0
    const v1, 0xfffe

    iget-object v5, p0, Lc8/SHf;->mParmas:Ljava/util/Map;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lc8/SHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/alibaba/fastjson/JSONObject;

    .line 392
    const-string/jumbo v0, "server"

    iput-object v0, p0, Lc8/SHf;->mType:Ljava/lang/String;

    .line 393
    iput-object v6, p0, Lc8/SHf;->mExtData:Lcom/alibaba/fastjson/JSONObject;

    .line 395
    :cond_1
    monitor-enter p0

    .line 396
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lc8/SHf;->isUploading:Z

    .line 397
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uploadSucessed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "originalFilePath"    # Ljava/lang/String;
    .param p2, "urlLocation"    # Ljava/lang/String;

    .prologue
    .line 376
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v6, "fileInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "fileName"

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string/jumbo v0, "tfsPatch"

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string/jumbo v0, "user"

    invoke-static {}, Lc8/EHf;->getUserNick()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const/4 v1, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " upload is completed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    const-string/jumbo v4, ""

    iget-object v5, p0, Lc8/SHf;->mParmas:Ljava/util/Map;

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lc8/SHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/alibaba/fastjson/JSONObject;

    .line 383
    const-string/jumbo v0, "tlog_monitor_module"

    const-string/jumbo v1, "file_upload_sucessed"

    invoke-static {v0, v1, p1}, Lc8/FHf;->uploadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method
