.class public Lc8/zLn;
.super Ljava/lang/Object;
.source "UPasswordClipboardManager.java"


# static fields
.field public static final INTENT_MESSAGE_KEY:Ljava/lang/String; = "clipboardkey"

.field public static uPasswordClipboardManager:Lc8/zLn;


# instance fields
.field private final ACTIVITY_WELCOM:Ljava/lang/String;

.field public final BROADCAST_RECEIVER_CLIP_MESSAGE:Ljava/lang/String;

.field private final HOMEPAGE_ACTIVITY:Ljava/lang/String;

.field private final HOMEPAGE_ENTRY:Ljava/lang/String;

.field private INIT_CLIP_TIME:I

.field private final SHOW_H5_TYPE:Ljava/lang/String;

.field private SHOW_TYPE:I

.field private final SHOW_VIDEO_TYPE:Ljava/lang/String;

.field private final SUCCESS_GET_CLIP_CONTENT:I

.field private final SUCCESS_REQUEST_MOTP_URL:I

.field private final TAG:Ljava/lang/String;

.field private apiID:Lc8/ENp;

.field private clipboardManager:Landroid/content/ClipboardManager;

.field private content:Ljava/lang/String;

.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string/jumbo v0, "UPasswordClipboardManager"

    iput-object v0, p0, Lc8/zLn;->TAG:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "com.youku.upassword.ClipBoardReceiver"

    iput-object v0, p0, Lc8/zLn;->BROADCAST_RECEIVER_CLIP_MESSAGE:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/zLn;->clipboardManager:Landroid/content/ClipboardManager;

    .line 44
    const/16 v0, 0x4bc

    iput v0, p0, Lc8/zLn;->SUCCESS_GET_CLIP_CONTENT:I

    .line 45
    const/16 v0, 0x4bd

    iput v0, p0, Lc8/zLn;->SUCCESS_REQUEST_MOTP_URL:I

    .line 46
    const-string/jumbo v0, "video"

    iput-object v0, p0, Lc8/zLn;->SHOW_VIDEO_TYPE:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "activity"

    iput-object v0, p0, Lc8/zLn;->SHOW_H5_TYPE:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lc8/zLn;->SHOW_TYPE:I

    .line 49
    const-string/jumbo v0, "com.youku.phone.ActivityWelcome"

    iput-object v0, p0, Lc8/zLn;->ACTIVITY_WELCOM:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "com.youku.ui.activity.HomePageActivity"

    iput-object v0, p0, Lc8/zLn;->HOMEPAGE_ACTIVITY:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "com.youku.HomePageEntry"

    iput-object v0, p0, Lc8/zLn;->HOMEPAGE_ENTRY:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "\u3010\u4f18\u9177\u751f\u6210\u53e3\u4ee4\u9884\u53d1\u6d4b\u8bd5\u3011\uff0c\u70b9\u51fb\u94fe\u63a5\u518d\u9009\u62e9\u6d4f\u89c8\u5668\u6253\u5f00http://c.b1wv.com/h.hFPA19\uff0c\u6216\u590d\u5236\u8fd9\u6761\u4fe1\u606f\uffe5pimKZwaE4EW\uffe5\u540e\u6253\u5f00\u4f18\u9177"

    iput-object v0, p0, Lc8/zLn;->content:Ljava/lang/String;

    .line 63
    const/16 v0, 0x2bc

    iput v0, p0, Lc8/zLn;->INIT_CLIP_TIME:I

    .line 96
    new-instance v0, Lc8/xLn;

    invoke-direct {v0, p0}, Lc8/xLn;-><init>(Lc8/zLn;)V

    iput-object v0, p0, Lc8/zLn;->handler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lc8/zLn;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/zLn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lc8/zLn;->doShowRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lc8/zLn;Ljava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Lc8/zLn;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lc8/zLn;->sendMessage(Ljava/lang/Object;I)V

    return-void
.end method

.method private doRequestAplatformUrl(Ljava/lang/String;)V
    .locals 5
    .param p1, "contentStr"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " doRequestAplatformUrl() contentStr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{\"passwordContent\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "paramterStr":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v2, "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "bizType"

    const-string/jumbo v4, "ykPassword.queryPassword"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v3, "bizParam"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Lc8/BLn;

    invoke-direct {v0}, Lc8/BLn;-><init>()V

    .line 133
    .local v0, "mtopUPasswordRequest":Lc8/BLn;
    new-instance v3, Lc8/yLn;

    invoke-direct {v3, p0}, Lc8/yLn;-><init>(Lc8/zLn;)V

    invoke-virtual {v0, v2, v3}, Lc8/BLn;->doMtopRequest(Ljava/util/HashMap;Lc8/JNp;)Lc8/ENp;

    move-result-object v3

    iput-object v3, p0, Lc8/zLn;->apiID:Lc8/ENp;

    .line 147
    return-void
.end method

.method private doShowRequest(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentStr"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " UPasswordClipboardManager doShowRequest() +contentStr :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    invoke-virtual {p0, p1}, Lc8/zLn;->isUPasswordContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lc8/zLn;->doRequestAplatformUrl(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/zLn;
    .locals 2

    .prologue
    .line 71
    const-class v1, Lc8/zLn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/zLn;->uPasswordClipboardManager:Lc8/zLn;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lc8/zLn;

    invoke-direct {v0}, Lc8/zLn;-><init>()V

    sput-object v0, Lc8/zLn;->uPasswordClipboardManager:Lc8/zLn;

    .line 74
    :cond_0
    sget-object v0, Lc8/zLn;->uPasswordClipboardManager:Lc8/zLn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendMessage(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "whatFlag"    # I

    .prologue
    .line 151
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 152
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    iput p2, v0, Landroid/os/Message;->what:I

    .line 154
    iget-object v1, p0, Lc8/zLn;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void
.end method

.method private showH5Dialog(Lcom/youku/upassword/bean/UPasswordBean;)V
    .locals 2
    .param p1, "uPasswordBean"    # Lcom/youku/upassword/bean/UPasswordBean;

    .prologue
    .line 260
    if-eqz p1, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " UPasswordClipboardManager showH5Dialog() uPasswordBean.sourceType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/upassword/bean/UPasswordBean;->sourceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    invoke-static {}, Lc8/ELn;->getInstance()Lc8/ELn;

    move-result-object v0

    invoke-static {}, Lc8/tLn;->getInstance()Lc8/tLn;

    move-result-object v1

    invoke-virtual {v1}, Lc8/tLn;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lc8/ELn;->showH5Dialog(Landroid/app/Activity;Lcom/youku/upassword/bean/UPasswordBean;)V

    .line 264
    :cond_0
    return-void
.end method

.method private showVideoDialog(Lcom/youku/upassword/bean/UPasswordBean;)V
    .locals 2
    .param p1, "uPasswordBean"    # Lcom/youku/upassword/bean/UPasswordBean;

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " UPasswordClipboardManager showVideoDialog() uPasswordBean.sourceType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/upassword/bean/UPasswordBean;->sourceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    invoke-static {}, Lc8/ELn;->getInstance()Lc8/ELn;

    move-result-object v0

    invoke-static {}, Lc8/tLn;->getInstance()Lc8/tLn;

    move-result-object v1

    invoke-virtual {v1}, Lc8/tLn;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lc8/ELn;->showVideoDialog(Landroid/app/Activity;Lcom/youku/upassword/bean/UPasswordBean;)V

    .line 271
    :cond_0
    return-void
.end method


# virtual methods
.method public clearClip()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v1, p0, Lc8/zLn;->clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lc8/zLn;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-static {v2, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 190
    .local v0, "clip":Landroid/content/ClipData;
    iget-object v1, p0, Lc8/zLn;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 192
    .end local v0    # "clip":Landroid/content/ClipData;
    :cond_0
    iput-object v2, p0, Lc8/zLn;->clipboardManager:Landroid/content/ClipboardManager;

    .line 194
    :cond_1
    return-void
.end method

.method public clearHandler()V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " clearHandler() apiID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/zLn;->apiID:Lc8/ENp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lc8/zLn;->apiID:Lc8/ENp;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lc8/zLn;->apiID:Lc8/ENp;

    invoke-virtual {v0}, Lc8/ENp;->cancelApiCall()Z

    .line 163
    :cond_0
    iget-object v0, p0, Lc8/zLn;->handler:Landroid/os/Handler;

    const/16 v1, 0x4bc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    return-void
.end method

.method public declared-synchronized initClipboard()V
    .locals 6

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/tLn;->getInstance()Lc8/tLn;

    move-result-object v3

    invoke-virtual {v3}, Lc8/tLn;->isActivitiyWelcomPage()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lc8/zLn;->INIT_CLIP_TIME:I

    int-to-long v4, v3

    invoke-static {v4, v5}, Lc8/ELn;->checkClickEvent(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    iget-object v3, p0, Lc8/zLn;->clipboardManager:Landroid/content/ClipboardManager;

    if-nez v3, :cond_0

    .line 83
    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    iput-object v3, p0, Lc8/zLn;->clipboardManager:Landroid/content/ClipboardManager;

    .line 85
    :cond_0
    iget-object v3, p0, Lc8/zLn;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 86
    .local v0, "clipData":Landroid/content/ClipData;
    if-eqz v0, :cond_1

    .line 87
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 88
    .local v2, "item":Landroid/content/ClipData$Item;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "contentStr":Ljava/lang/String;
    invoke-direct {p0, v1}, Lc8/zLn;->doShowRequest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v1    # "contentStr":Ljava/lang/String;
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_1
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public isUPasswordContent(Ljava/lang/String;)Z
    .locals 5
    .param p1, "contextStr"    # Ljava/lang/String;

    .prologue
    .line 173
    sget-object v0, Lc8/DLn;->uPasswordCode:Ljava/lang/String;

    .line 175
    .local v0, "code":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(?s).*(("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")(.+?)("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "))(?s).*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "pattern":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUPasswordContent pattern:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    invoke-static {v2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 179
    .local v1, "isMatch":Z
    return v1
.end method

.method public parseUPasswordResult(Ljava/lang/String;)Lcom/youku/upassword/bean/UPasswordBean;
    .locals 6
    .param p1, "contentStr"    # Ljava/lang/String;

    .prologue
    .line 198
    new-instance v3, Lcom/youku/upassword/bean/UPasswordBean;

    invoke-direct {v3}, Lcom/youku/upassword/bean/UPasswordBean;-><init>()V

    .line 199
    .local v3, "uPasswordBean":Lcom/youku/upassword/bean/UPasswordBean;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " parseUPasswordResult() contentStr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 202
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "success"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "success"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    const-string/jumbo v4, "model"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "model"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 205
    const-string/jumbo v4, "model"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 206
    .local v2, "jsonObjectModel":Lorg/json/JSONObject;
    const-string/jumbo v4, "videoId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/upassword/bean/UPasswordBean;->vidStr:Ljava/lang/String;

    .line 207
    const-string/jumbo v4, "targetUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/upassword/bean/UPasswordBean;->h5UrlStr:Ljava/lang/String;

    .line 208
    const-string/jumbo v4, "picUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/upassword/bean/UPasswordBean;->imageUrlStr:Ljava/lang/String;

    .line 209
    const-string/jumbo v4, "bizId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/upassword/bean/UPasswordBean;->bizId:Ljava/lang/String;

    .line 210
    const-string/jumbo v4, "btnName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/upassword/bean/UPasswordBean;->btnName:Ljava/lang/String;

    .line 211
    const-string/jumbo v4, "password"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/upassword/bean/UPasswordBean;->password:Ljava/lang/String;

    .line 212
    const-string/jumbo v4, "watchCount"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/youku/upassword/bean/UPasswordBean;->watchCount:I

    .line 213
    const-string/jumbo v4, "ykpwdOwnerId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/youku/upassword/bean/UPasswordBean;->ykpwdOwnerId:J

    .line 214
    const-string/jumbo v4, "sourceType"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/upassword/bean/UPasswordBean;->sourceType:Ljava/lang/String;

    .line 215
    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/upassword/bean/UPasswordBean;->titleStr:Ljava/lang/String;

    .line 216
    const-string/jumbo v4, "cookie"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/upassword/bean/UPasswordBean;->cookieStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "jsonObjectModel":Lorg/json/JSONObject;
    .end local v3    # "uPasswordBean":Lcom/youku/upassword/bean/UPasswordBean;
    :goto_0
    return-object v3

    .line 220
    .restart local v3    # "uPasswordBean":Lcom/youku/upassword/bean/UPasswordBean;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " parseUPasswordResult : exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public showDiffDialog(Lcom/youku/upassword/bean/UPasswordBean;)V
    .locals 4
    .param p1, "uPasswordBean"    # Lcom/youku/upassword/bean/UPasswordBean;

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " UPasswordClipboardManager showDiffDialog() uPasswordBean.sourceType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/upassword/bean/UPasswordBean;->sourceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUPasswordDialogEvent: uPasswordBean.cookieStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/upassword/bean/UPasswordBean;->cookieStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uPasswordBean.getH5UrlStr() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/upassword/bean/UPasswordBean;->getH5UrlStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uPasswordBean.getVidStr() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/upassword/bean/UPasswordBean;->getVidStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Lcom/youku/upassword/bean/UPasswordBean;->getCookieStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/upassword/bean/UPasswordBean;->getH5UrlStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/youku/upassword/bean/UPasswordBean;->getVidStr()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/upassword/bean/UPasswordBean;->sourceType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lc8/FLn;->onUPasswordDialogEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v0, "activity"

    iget-object v1, p1, Lcom/youku/upassword/bean/UPasswordBean;->sourceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-direct {p0, p1}, Lc8/zLn;->showH5Dialog(Lcom/youku/upassword/bean/UPasswordBean;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const-string/jumbo v0, "video"

    iget-object v1, p1, Lcom/youku/upassword/bean/UPasswordBean;->sourceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-direct {p0, p1}, Lc8/zLn;->showVideoDialog(Lcom/youku/upassword/bean/UPasswordBean;)V

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {p0}, Lc8/zLn;->clearClip()V

    goto :goto_0
.end method
