.class public Lc8/HE;
.super Lc8/RD;
.source "WVCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/GE;
    }
.end annotation


# static fields
.field public static final LOCAL_IMAGE:Ljava/lang/String; = "//127.0.0.1/wvcache/photo.jpg?_wvcrc=1&t="

.field private static final TAG:Ljava/lang/String; = "WVCamera"

.field public static maxLength:I

.field private static multiActivityClass:Ljava/lang/String;

.field private static uploadServiceClass:Ljava/lang/String;


# instance fields
.field private lastAccess:J

.field private mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mLocalPath:Ljava/lang/String;

.field private mParams:Lc8/GE;

.field private mPopupController:Lc8/jI;

.field private mPopupMenuTags:[Ljava/lang/String;

.field protected popupClickListener:Landroid/view/View$OnClickListener;

.field private uploadService:Lc8/wF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const/16 v0, 0x400

    sput v0, Lc8/HE;->maxLength:I

    .line 65
    sput-object v1, Lc8/HE;->uploadServiceClass:Ljava/lang/String;

    .line 67
    sput-object v1, Lc8/HE;->multiActivityClass:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 60
    iput-object v0, p0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 62
    iput-object v0, p0, Lc8/HE;->mLocalPath:Ljava/lang/String;

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/HE;->lastAccess:J

    .line 140
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u62cd\u7167"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\u4ece\u76f8\u518c\u9009\u62e9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lc8/HE;->mPopupMenuTags:[Ljava/lang/String;

    .line 223
    new-instance v0, Lc8/EE;

    invoke-direct {v0, p0}, Lc8/EE;-><init>(Lc8/HE;)V

    iput-object v0, p0, Lc8/HE;->popupClickListener:Landroid/view/View$OnClickListener;

    .line 520
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$002(Lc8/HE;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/HE;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lc8/HE;->isAlive:Z

    return p1
.end method

.method static synthetic access$100(Lc8/HE;)Lc8/jI;
    .locals 1
    .param p0, "x0"    # Lc8/HE;

    .prologue
    .line 55
    iget-object v0, p0, Lc8/HE;->mPopupController:Lc8/jI;

    return-object v0
.end method

.method static synthetic access$200(Lc8/HE;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/HE;

    .prologue
    .line 55
    iget-object v0, p0, Lc8/HE;->mPopupMenuTags:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/HE;)V
    .locals 0
    .param p0, "x0"    # Lc8/HE;

    .prologue
    .line 55
    invoke-direct {p0}, Lc8/HE;->openCamara()V

    return-void
.end method

.method static synthetic access$400(Lc8/HE;)V
    .locals 0
    .param p0, "x0"    # Lc8/HE;

    .prologue
    .line 55
    invoke-direct {p0}, Lc8/HE;->chosePhoto()V

    return-void
.end method

.method static synthetic access$500(Lc8/HE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1
    .param p0, "x0"    # Lc8/HE;

    .prologue
    .line 55
    iget-object v0, p0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object v0
.end method

.method static synthetic access$600(Lc8/HE;Ljava/lang/String;Lc8/GE;)V
    .locals 0
    .param p0, "x0"    # Lc8/HE;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lc8/GE;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lc8/HE;->takePhotoSuccess(Ljava/lang/String;Lc8/GE;)V

    return-void
.end method

.method private chosePhoto()V
    .locals 6

    .prologue
    .line 194
    const-string/jumbo v4, "WVCamera"

    const-string/jumbo v5, "start to pick photo from system album."

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v4, "1"

    iget-object v5, p0, Lc8/HE;->mParams:Lc8/GE;

    iget-object v5, v5, Lc8/GE;->mutipleSelection:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    iget-object v4, p0, Lc8/HE;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.taobao.taobao"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 200
    .local v3, "result":Lc8/kE;
    const-string/jumbo v4, "msg"

    const-string/jumbo v5, "mutipleSelection only support in taobao!"

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v4, p0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v4, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 221
    .end local v3    # "result":Lc8/kE;
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string/jumbo v4, "taobao://go/ImgFileListActivity"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 207
    const-string/jumbo v4, "maxSelect"

    iget-object v5, p0, Lc8/HE;->mParams:Lc8/GE;

    iget v5, v5, Lc8/GE;->maxSelect:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    const/16 v2, 0xfa3

    .line 213
    .local v2, "requestCode":I
    :goto_1
    iget-object v4, p0, Lc8/HE;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 215
    :try_start_0
    iget-object v4, p0, Lc8/HE;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 218
    iget-object v4, p0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 210
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "requestCode":I
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.PICK"

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .restart local v1    # "intent":Landroid/content/Intent;
    const/16 v2, 0xfa2

    .restart local v2    # "requestCode":I
    goto :goto_1
.end method

.method private initTakePhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 9
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 596
    iget-boolean v6, p0, Lc8/HE;->isAlive:Z

    if-nez v6, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 599
    .local v4, "now":J
    iget-wide v6, p0, Lc8/HE;->lastAccess:J

    sub-long v0, v4, v6

    .line 600
    .local v0, "interval":J
    iput-wide v4, p0, Lc8/HE;->lastAccess:J

    .line 601
    const-wide/16 v6, 0x3e8

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    .line 602
    const-string/jumbo v6, "WVCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "takePhoto, call this method too frequent,  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 605
    :cond_2
    iput-object p1, p0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 606
    new-instance v6, Lc8/GE;

    invoke-direct {v6, p0}, Lc8/GE;-><init>(Lc8/HE;)V

    iput-object v6, p0, Lc8/HE;->mParams:Lc8/GE;

    .line 608
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 609
    .local v2, "jso":Lorg/json/JSONObject;
    iget-object v6, p0, Lc8/HE;->mParams:Lc8/GE;

    const-string/jumbo v7, "type"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lc8/GE;->type:I

    .line 610
    iget-object v6, p0, Lc8/HE;->mParams:Lc8/GE;

    const-string/jumbo v7, "mode"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lc8/GE;->mode:Ljava/lang/String;

    .line 611
    iget-object v6, p0, Lc8/HE;->mParams:Lc8/GE;

    const-string/jumbo v7, "v"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lc8/GE;->v:Ljava/lang/String;

    .line 612
    iget-object v6, p0, Lc8/HE;->mParams:Lc8/GE;

    const-string/jumbo v7, "bizCode"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lc8/GE;->bizCode:Ljava/lang/String;

    .line 613
    iget-object v6, p0, Lc8/HE;->mParams:Lc8/GE;

    const-string/jumbo v7, "extraData"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lc8/GE;->extraData:Ljava/lang/String;

    .line 614
    iget-object v6, p0, Lc8/HE;->mParams:Lc8/GE;

    const-string/jumbo v7, "identifier"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lc8/GE;->identifier:Ljava/lang/String;

    .line 615
    iget-object v6, p0, Lc8/HE;->mParams:Lc8/GE;

    const-string/jumbo v7, "maxSelect"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lc8/GE;->maxSelect:I

    .line 616
    iget-object v6, p0, Lc8/HE;->mParams:Lc8/GE;

    const-string/jumbo v7, "mutipleSelection"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lc8/GE;->mutipleSelection:Ljava/lang/String;

    .line 617
    iget-object v6, p0, Lc8/HE;->mParams:Lc8/GE;

    const-string/jumbo v7, "needZoom"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lc8/GE;->needZoom:Z

    .line 618
    iget-object v6, p0, Lc8/HE;->mParams:Lc8/GE;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lc8/GE;->isLastPic:Z

    .line 619
    iget-object v6, p0, Lc8/HE;->mParams:Lc8/GE;

    const-string/jumbo v7, "needLogin"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lc8/GE;->needLogin:Z

    .line 620
    iget-object v6, p0, Lc8/HE;->mParams:Lc8/GE;

    const-string/jumbo v7, "needBase64"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lc8/GE;->needBase64:Z

    .line 621
    const-string/jumbo v6, "maxLength"

    const/16 v7, 0x400

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lc8/HE;->maxLength:I

    .line 622
    const-string/jumbo v6, "localUrl"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 623
    iget-object v6, p0, Lc8/HE;->mParams:Lc8/GE;

    const-string/jumbo v7, "localUrl"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lc8/GE;->localUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 625
    .end local v2    # "jso":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    const-string/jumbo v6, "WVCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "takePhoto fail, params: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 627
    .local v3, "result":Lc8/kE;
    const-string/jumbo v6, "HY_PARAM_ERR"

    invoke-virtual {v3, v6}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 628
    iget-object v6, p0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v6, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto/16 :goto_0
.end method

.method private isHasCamaraPermission()Z
    .locals 2

    .prologue
    .line 185
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 186
    .local v0, "camera":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    const/4 v1, 0x1

    .line 189
    .end local v0    # "camera":Landroid/hardware/Camera;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private openCamara()V
    .locals 10

    .prologue
    .line 148
    invoke-direct {p0}, Lc8/HE;->isHasCamaraPermission()Z

    move-result v4

    .line 149
    .local v4, "permission":Z
    if-nez v4, :cond_1

    .line 150
    iget-object v6, p0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v6, :cond_0

    .line 151
    new-instance v5, Lc8/kE;

    invoke-direct {v5}, Lc8/kE;-><init>()V

    .line 152
    .local v5, "result":Lc8/kE;
    const-string/jumbo v6, "msg"

    const-string/jumbo v7, "NO_PERMISSION"

    invoke-virtual {v5, v6, v7}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v6, p0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v6, v5}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 177
    .end local v5    # "result":Lc8/kE;
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string/jumbo v6, "WVCamera"

    const-string/jumbo v7, "start to open system camera."

    invoke-static {v6, v7}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lc8/HE;->mParams:Lc8/GE;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "//127.0.0.1/wvcache/photo.jpg?_wvcrc=1&t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lc8/GE;->localUrl:Ljava/lang/String;

    .line 161
    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lc8/qB;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "cacheDir":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 163
    iget-object v6, p0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v6, :cond_0

    .line 164
    iget-object v6, p0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 168
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 171
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/HE;->mParams:Lc8/GE;

    iget-object v7, v7, Lc8/GE;->localUrl:Ljava/lang/String;

    invoke-static {v7}, Lc8/NH;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lc8/HE;->mLocalPath:Ljava/lang/String;

    .line 172
    iget-object v6, p0, Lc8/HE;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lc8/HE;->mLocalPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lc8/LD;->getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 173
    .local v2, "imageUri":Landroid/net/Uri;
    const-string/jumbo v6, "output"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 174
    iget-object v6, p0, Lc8/HE;->mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_0

    .line 175
    iget-object v6, p0, Lc8/HE;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    const/16 v7, 0xfa1

    invoke-virtual {v6, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public static registerMultiActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_0

    .line 585
    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/HE;->multiActivityClass:Ljava/lang/String;

    .line 587
    :cond_0
    return-void
.end method

.method public static registerMultiActivityName(Ljava/lang/String;)V
    .locals 0
    .param p0, "classname"    # Ljava/lang/String;

    .prologue
    .line 590
    if-eqz p0, :cond_0

    .line 591
    sput-object p0, Lc8/HE;->multiActivityClass:Ljava/lang/String;

    .line 593
    :cond_0
    return-void
.end method

.method public static registerUploadService(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/wF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/taobao/windvane/jsbridge/api/WVUploadService;>;"
    if-eqz p0, :cond_0

    .line 579
    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/HE;->uploadServiceClass:Ljava/lang/String;

    .line 581
    :cond_0
    return-void
.end method

.method private takePhotoSuccess(Ljava/lang/String;Lc8/GE;)V
    .locals 6
    .param p1, "picPath"    # Ljava/lang/String;
    .param p2, "params"    # Lc8/GE;

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x1

    .line 472
    iget v3, p2, Lc8/GE;->type:I

    if-ne v3, v4, :cond_2

    .line 473
    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v3

    invoke-virtual {v3, v4}, Lc8/qB;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "cacheDir":Ljava/lang/String;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 475
    iput-object p1, p2, Lc8/GE;->filePath:Ljava/lang/String;

    .line 476
    invoke-virtual {p0, p2}, Lc8/HE;->upload(Lc8/GE;)V

    .line 518
    .end local v0    # "cacheDir":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 478
    .restart local v0    # "cacheDir":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 481
    .end local v0    # "cacheDir":Ljava/lang/String;
    :cond_2
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 482
    .local v2, "result":Lc8/kE;
    invoke-virtual {v2}, Lc8/kE;->setSuccess()V

    .line 483
    const-string/jumbo v3, "1"

    iget-object v4, p2, Lc8/GE;->mutipleSelection:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 485
    iget-boolean v3, p2, Lc8/GE;->isLastPic:Z

    if-eqz v3, :cond_0

    .line 488
    iget-object v3, p2, Lc8/GE;->images:Lorg/json/JSONArray;

    if-nez v3, :cond_4

    .line 489
    const-string/jumbo v3, "url"

    iget-object v4, p2, Lc8/GE;->localUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string/jumbo v3, "localPath"

    invoke-virtual {v2, v3, p1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-boolean v3, p2, Lc8/GE;->needBase64:Z

    if-eqz v3, :cond_3

    .line 492
    invoke-static {p1, v5}, Lc8/SH;->readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 493
    .local v1, "pic":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 494
    const-string/jumbo v3, "base64Data"

    invoke-static {v1}, Lc8/zF;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .end local v1    # "pic":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    iget-object v3, p0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v3, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 514
    :goto_2
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 515
    const-string/jumbo v3, "WVCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pic not upload and call success, retString: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lc8/kE;->toJsonString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_4
    const-string/jumbo v3, "images"

    iget-object v4, p2, Lc8/GE;->images:Lorg/json/JSONArray;

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_1

    .line 502
    :cond_5
    const-string/jumbo v3, "url"

    iget-object v4, p2, Lc8/GE;->localUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string/jumbo v3, "localPath"

    invoke-virtual {v2, v3, p1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-boolean v3, p2, Lc8/GE;->needBase64:Z

    if-eqz v3, :cond_6

    .line 505
    invoke-static {p1, v5}, Lc8/SH;->readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 506
    .restart local v1    # "pic":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_6

    .line 507
    const-string/jumbo v3, "base64Data"

    invoke-static {v1}, Lc8/zF;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .end local v1    # "pic":Landroid/graphics/Bitmap;
    :cond_6
    const-string/jumbo v3, "WVCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lc8/GE;->localUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " localPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v3, p0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v3, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_2
.end method

.method private zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Lc8/GE;)V
    .locals 16
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;
    .param p3, "params"    # Lc8/GE;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 348
    const/4 v8, 0x0

    .line 350
    .local v8, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/HE;->mParams:Lc8/GE;

    iget-boolean v2, v2, Lc8/GE;->needZoom:Z

    if-eqz v2, :cond_4

    .line 351
    invoke-static/range {p1 .. p1}, Lc8/SH;->readRotationDegree(Ljava/lang/String;)I

    move-result v9

    .line 352
    .local v9, "degree":I
    sget v2, Lc8/HE;->maxLength:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lc8/SH;->readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 353
    if-nez v8, :cond_1

    .line 439
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 440
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    .end local v9    # "degree":I
    :cond_0
    :goto_0
    return-void

    .line 355
    .restart local v9    # "degree":I
    :cond_1
    :try_start_1
    sget v2, Lc8/HE;->maxLength:I

    invoke-static {v8, v2}, Lc8/SH;->zoomBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 356
    invoke-static {v8, v9}, Lc8/SH;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 378
    .end local v9    # "degree":I
    :cond_2
    new-instance v5, Lc8/tB;

    invoke-direct {v5}, Lc8/tB;-><init>()V

    .line 379
    .local v5, "fileInfo":Lc8/tB;
    move-object/from16 v0, p3

    iget-object v2, v0, Lc8/GE;->localUrl:Ljava/lang/String;

    invoke-static {v2}, Lc8/NH;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lc8/tB;->fileName:Ljava/lang/String;

    .line 380
    const-string/jumbo v2, "image/jpeg"

    iput-object v2, v5, Lc8/tB;->mimeType:Ljava/lang/String;

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 382
    .local v10, "now":J
    const-wide v2, 0x9a7ec800L

    add-long/2addr v2, v10

    iput-wide v2, v5, Lc8/tB;->expireTime:J

    .line 384
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 385
    const-string/jumbo v2, "WVCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "write pic to file, name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v5, Lc8/tB;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_3
    move-object v4, v8

    .line 389
    .local v4, "bm2":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 390
    new-instance v2, Lc8/FE;

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lc8/FE;-><init>(Lc8/HE;Landroid/graphics/Bitmap;Lc8/tB;Ljava/lang/String;Lc8/GE;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 440
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 358
    .end local v4    # "bm2":Landroid/graphics/Bitmap;
    .end local v5    # "fileInfo":Lc8/tB;
    .end local v10    # "now":J
    :cond_4
    :try_start_2
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 359
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    .local v15, "tarFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 361
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 363
    :cond_5
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v14, "srcFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 365
    new-instance v13, Lc8/kE;

    invoke-direct {v13}, Lc8/kE;-><init>()V

    .line 366
    .local v13, "result":Lc8/kE;
    const-string/jumbo v2, "errorInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to read file : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v2, v13}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 439
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 440
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 370
    .end local v13    # "result":Lc8/kE;
    :cond_6
    :try_start_3
    invoke-static {v14, v15}, Lc8/KD;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 371
    new-instance v13, Lc8/kE;

    invoke-direct {v13}, Lc8/kE;-><init>()V

    .line 372
    .restart local v13    # "result":Lc8/kE;
    const-string/jumbo v2, "errorInfo"

    const-string/jumbo v3, "Failed to copy file!"

    invoke-virtual {v13, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v2, v13}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 439
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 440
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 434
    .end local v13    # "result":Lc8/kE;
    .end local v14    # "srcFile":Ljava/io/File;
    .end local v15    # "tarFile":Ljava/io/File;
    :catch_0
    move-exception v2

    :try_start_4
    new-instance v12, Lc8/kE;

    invoke-direct {v12}, Lc8/kE;-><init>()V

    .line 435
    .local v12, "res":Lc8/kE;
    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "write photo io error."

    invoke-virtual {v12, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v2, v12}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 437
    const-string/jumbo v2, "WVCamera"

    const-string/jumbo v3, "write photo io error."

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 439
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 440
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 439
    .end local v12    # "res":Lc8/kE;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 440
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    throw v2
.end method


# virtual methods
.method public declared-synchronized confirmUploadPhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 8
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 447
    new-instance v2, Lc8/GE;

    invoke-direct {v2, p0}, Lc8/GE;-><init>(Lc8/HE;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    .local v2, "paramsData":Lc8/GE;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 451
    .local v1, "jso":Lorg/json/JSONObject;
    const-string/jumbo v5, "path"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, "path":Ljava/lang/String;
    const-string/jumbo v5, "identifier"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/GE;->identifier:Ljava/lang/String;

    .line 453
    const-string/jumbo v5, "v"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/GE;->v:Ljava/lang/String;

    .line 454
    const-string/jumbo v5, "bizCode"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/GE;->bizCode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    :try_start_2
    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lc8/qB;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "cacheDir":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 464
    iput-object v3, v2, Lc8/GE;->filePath:Ljava/lang/String;

    .line 465
    invoke-virtual {p0, v2}, Lc8/HE;->upload(Lc8/GE;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    .end local v0    # "cacheDir":Ljava/lang/String;
    .end local v1    # "jso":Lorg/json/JSONObject;
    .end local v3    # "path":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 456
    :catch_0
    move-exception v5

    :try_start_3
    const-string/jumbo v5, "WVCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "confirmUploadPhoto fail, params: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    new-instance v4, Lc8/kE;

    invoke-direct {v4}, Lc8/kE;-><init>()V

    .line 458
    .local v4, "result":Lc8/kE;
    const-string/jumbo v5, "HY_PARAM_ERR"

    invoke-virtual {v4, v5}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 446
    .end local v2    # "paramsData":Lc8/GE;
    .end local v4    # "result":Lc8/kE;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 467
    .restart local v0    # "cacheDir":Ljava/lang/String;
    .restart local v1    # "jso":Lorg/json/JSONObject;
    .restart local v2    # "paramsData":Lc8/GE;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_0
    :try_start_4
    new-instance v5, Lc8/kE;

    const-string/jumbo v6, "HY_PARAM_ERR"

    invoke-direct {v5, v6}, Lc8/kE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    const-string/jumbo v2, "takePhoto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    :try_start_0
    iget-object v0, p0, Lc8/HE;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "android.permission.CAMERA"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lc8/jH;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Lc8/iH;

    move-result-object v0

    new-instance v2, Lc8/DE;

    invoke-direct {v2, p0, p3, p2}, Lc8/DE;-><init>(Lc8/HE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lc8/iH;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v0

    new-instance v2, Lc8/CE;

    invoke-direct {v2, p0, p3}, Lc8/CE;-><init>(Lc8/HE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-virtual {v0, v2}, Lc8/iH;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v0

    invoke-virtual {v0}, Lc8/iH;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v0, v1

    .line 95
    :cond_0
    return v0

    .line 90
    :cond_1
    const-string/jumbo v2, "confirmUploadPhoto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p0, p3, p2}, Lc8/HE;->confirmUploadPhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 22
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 241
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    const-string/jumbo v4, "WVCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "takePhoto callback, requestCode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";resultCode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    new-instance v20, Lc8/kE;

    invoke-direct/range {v20 .. v20}, Lc8/kE;-><init>()V

    .line 245
    .local v20, "result":Lc8/kE;
    packed-switch p1, :pswitch_data_0

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 247
    :pswitch_0
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_2

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/HE;->mLocalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/HE;->mLocalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/HE;->mParams:Lc8/GE;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v8}, Lc8/HE;->zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Lc8/GE;)V

    goto :goto_0

    .line 250
    :cond_2
    const-string/jumbo v4, "WVCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "call takePhoto fail. resultCode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string/jumbo v4, "msg"

    const-string/jumbo v7, "CANCELED_BY_USER"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v7}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 257
    :pswitch_1
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "fileList"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 258
    :cond_3
    const-string/jumbo v4, "msg"

    const-string/jumbo v7, "CANCELED_BY_USER"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v7}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 262
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "fileList"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 263
    .local v13, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 264
    .local v21, "size":I
    if-nez v21, :cond_5

    .line 266
    const-string/jumbo v4, "msg"

    const-string/jumbo v7, "CANCELED_BY_USER"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v7}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto/16 :goto_0

    .line 270
    :cond_5
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 272
    .local v15, "images":Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v14, v0, :cond_1

    .line 273
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 274
    .local v19, "picturePath":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lc8/JD;->exists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 275
    new-instance v18, Lc8/GE;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/HE;->mParams:Lc8/GE;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lc8/GE;-><init>(Lc8/HE;Lc8/GE;)V

    .line 276
    .local v18, "params":Lc8/GE;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "//127.0.0.1/wvcache/photo.jpg?_wvcrc=1&t="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Lc8/GE;->localUrl:Ljava/lang/String;

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lc8/qB;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v7, v0, Lc8/GE;->localUrl:Ljava/lang/String;

    invoke-static {v7}, Lc8/NH;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 279
    .local v17, "localPath":Ljava/lang/String;
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 281
    .local v16, "imgData":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "url"

    move-object/from16 v0, v18

    iget-object v7, v0, Lc8/GE;->localUrl:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string/jumbo v4, "localPath"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 284
    const-string/jumbo v4, "WVCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    iget-object v8, v0, Lc8/GE;->localUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " localPath:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_2
    add-int/lit8 v4, v21, -0x1

    if-ne v14, v4, :cond_6

    .line 290
    move-object/from16 v0, v18

    iput-object v15, v0, Lc8/GE;->images:Lorg/json/JSONArray;

    .line 294
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lc8/HE;->zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Lc8/GE;)V

    .line 296
    const-wide/16 v8, 0x64

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    .end local v16    # "imgData":Lorg/json/JSONObject;
    .end local v17    # "localPath":Ljava/lang/String;
    .end local v18    # "params":Lc8/GE;
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 285
    .restart local v16    # "imgData":Lorg/json/JSONObject;
    .restart local v17    # "localPath":Ljava/lang/String;
    .restart local v18    # "params":Lc8/GE;
    :catch_0
    move-exception v12

    .line 287
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 292
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lc8/GE;->isLastPic:Z

    goto :goto_3

    .line 297
    :catch_1
    move-exception v12

    .line 299
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 302
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "imgData":Lorg/json/JSONObject;
    .end local v17    # "localPath":Ljava/lang/String;
    .end local v18    # "params":Lc8/GE;
    :cond_7
    const-string/jumbo v4, "WVCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pick photo fail, picture not exist, picturePath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 308
    .end local v13    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "i":I
    .end local v15    # "images":Lorg/json/JSONArray;
    .end local v19    # "picturePath":Ljava/lang/String;
    .end local v21    # "size":I
    :pswitch_2
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_c

    if-eqz p3, :cond_c

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 310
    .local v5, "imageUri":Landroid/net/Uri;
    const/16 v19, 0x0

    .line 311
    .restart local v19    # "picturePath":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 312
    const-string/jumbo v4, "file"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 313
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 326
    :cond_8
    :goto_5
    invoke-static/range {v19 .. v19}, Lc8/JD;->exists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 327
    new-instance v18, Lc8/GE;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/HE;->mParams:Lc8/GE;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lc8/GE;-><init>(Lc8/HE;Lc8/GE;)V

    .line 328
    .restart local v18    # "params":Lc8/GE;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "//127.0.0.1/wvcache/photo.jpg?_wvcrc=1&t="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Lc8/GE;->localUrl:Ljava/lang/String;

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lc8/qB;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v7, v0, Lc8/GE;->localUrl:Ljava/lang/String;

    invoke-static {v7}, Lc8/NH;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 331
    .restart local v17    # "localPath":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lc8/HE;->zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Lc8/GE;)V

    goto/16 :goto_0

    .line 315
    .end local v17    # "localPath":Ljava/lang/String;
    .end local v18    # "params":Lc8/GE;
    :cond_9
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v7, "_data"

    aput-object v7, v6, v4

    .line 316
    .local v6, "fileColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/HE;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 317
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 318
    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 319
    .local v11, "columnIndex":I
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 320
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 322
    .end local v11    # "columnIndex":I
    :cond_a
    const-string/jumbo v4, "WVCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pick photo fail, Cursor is empty, imageUri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 334
    .end local v6    # "fileColumns":[Ljava/lang/String;
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_b
    const-string/jumbo v4, "WVCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pick photo fail, picture not exist, picturePath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    .end local v5    # "imageUri":Landroid/net/Uri;
    .end local v19    # "picturePath":Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, "WVCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "call pick photo fail. resultCode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string/jumbo v4, "msg"

    const-string/jumbo v7, "CANCELED_BY_USER"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v7}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto/16 :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0xfa1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized takePhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 8
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lc8/HE;->initTakePhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lc8/HE;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lc8/HE;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    .line 114
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 115
    iget-object v3, p0, Lc8/HE;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 116
    .local v1, "inputmanger":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 120
    .end local v1    # "inputmanger":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    const-string/jumbo v3, "camera"

    iget-object v4, p0, Lc8/HE;->mParams:Lc8/GE;

    iget-object v4, v4, Lc8/GE;->mode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    invoke-direct {p0}, Lc8/HE;->openCamara()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :cond_1
    :try_start_1
    const-string/jumbo v3, "photo"

    iget-object v4, p0, Lc8/HE;->mParams:Lc8/GE;

    iget-object v4, v4, Lc8/GE;->mode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    invoke-direct {p0}, Lc8/HE;->chosePhoto()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 126
    :cond_2
    :try_start_2
    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v3

    if-nez v3, :cond_3

    .line 127
    iget-object v3, p0, Lc8/HE;->mPopupMenuTags:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Take pictures"

    aput-object v5, v3, v4

    .line 128
    iget-object v3, p0, Lc8/HE;->mPopupMenuTags:[Ljava/lang/String;

    const/4 v4, 0x1

    const-string/jumbo v5, "Select from album"

    aput-object v5, v3, v4

    .line 131
    :cond_3
    new-instance v3, Lc8/jI;

    iget-object v4, p0, Lc8/HE;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lc8/HE;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v5}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lc8/HE;->mPopupMenuTags:[Ljava/lang/String;

    iget-object v7, p0, Lc8/HE;->popupClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v3, v4, v5, v6, v7}, Lc8/jI;-><init>(Landroid/content/Context;Landroid/view/View;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lc8/HE;->mPopupController:Lc8/jI;

    .line 132
    iget-object v3, p0, Lc8/HE;->mPopupController:Lc8/jI;

    invoke-virtual {v3}, Lc8/jI;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "WVCamera"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public takePhotoPlus(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "localPath"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .prologue
    .line 99
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 100
    :cond_0
    const-string/jumbo v0, "WVCamera"

    const-string/jumbo v1, "takePhotoPlus fail, params error"

    invoke-static {v0, v1}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-direct {p0, p1, p3}, Lc8/HE;->initTakePhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 104
    iput-object p2, p0, Lc8/HE;->mLocalPath:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lc8/HE;->mParams:Lc8/GE;

    invoke-direct {p0, p2, p2, v0}, Lc8/HE;->zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Lc8/GE;)V

    goto :goto_0
.end method

.method protected upload(Lc8/GE;)V
    .locals 5
    .param p1, "params"    # Lc8/GE;

    .prologue
    .line 561
    iget-object v2, p0, Lc8/HE;->uploadService:Lc8/wF;

    if-nez v2, :cond_0

    sget-object v2, Lc8/HE;->uploadServiceClass:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 563
    :try_start_0
    sget-object v2, Lc8/HE;->uploadServiceClass:Ljava/lang/String;

    invoke-static {v2}, Lc8/HE;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 564
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    const-class v2, Lc8/wF;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/wF;

    iput-object v2, p0, Lc8/HE;->uploadService:Lc8/wF;

    .line 566
    iget-object v2, p0, Lc8/HE;->uploadService:Lc8/wF;

    iget-object v3, p0, Lc8/HE;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lc8/HE;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {v2, v3, v4}, Lc8/wF;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    iget-object v2, p0, Lc8/HE;->uploadService:Lc8/wF;

    if-eqz v2, :cond_1

    .line 573
    iget-object v2, p0, Lc8/HE;->uploadService:Lc8/wF;

    iget-object v3, p0, Lc8/HE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v2, p1, v3}, Lc8/wF;->doUpload(Lc8/GE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 575
    :cond_1
    return-void

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WVCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "create upload service error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lc8/HE;->uploadServiceClass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
