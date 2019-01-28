.class public Lc8/gXe;
.super Landroid/app/Activity;
.source "BaseNotifyClickActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/fXe;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "accs.BaseNotifyClickActivity"

.field private static final TAOBAO_PACKAGE_NAME:Ljava/lang/String; = "com.taobao.taobao"

.field private static notifyListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lc8/fXe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private agooFactory:Lc8/QWp;

.field private msgSource:Ljava/lang/String;

.field private notifyManager:Lc8/UWp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lc8/gXe;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/gXe;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/gXe;->parseMsgByThirdPush(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/gXe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/gXe;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/gXe;->msgSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/gXe;)Lc8/UWp;
    .locals 1
    .param p0, "x0"    # Lc8/gXe;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/gXe;->notifyManager:Lc8/UWp;

    return-object v0
.end method

.method static synthetic access$202(Lc8/gXe;Lc8/UWp;)Lc8/UWp;
    .locals 0
    .param p0, "x0"    # Lc8/gXe;
    .param p1, "x1"    # Lc8/UWp;

    .prologue
    .line 26
    iput-object p1, p0, Lc8/gXe;->notifyManager:Lc8/UWp;

    return-object p1
.end method

.method static synthetic access$300(Lc8/gXe;)Lc8/QWp;
    .locals 1
    .param p0, "x0"    # Lc8/gXe;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/gXe;->agooFactory:Lc8/QWp;

    return-object v0
.end method

.method static synthetic access$302(Lc8/gXe;Lc8/QWp;)Lc8/QWp;
    .locals 0
    .param p0, "x0"    # Lc8/gXe;
    .param p1, "x1"    # Lc8/QWp;

    .prologue
    .line 26
    iput-object p1, p0, Lc8/gXe;->agooFactory:Lc8/QWp;

    return-object p1
.end method

.method static synthetic access$400(Lc8/gXe;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lc8/gXe;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/gXe;->reportClickNotifyMsg(Landroid/content/Intent;)V

    return-void
.end method

.method public static addNotifyListener(Lc8/fXe;)V
    .locals 1
    .param p0, "listener"    # Lc8/fXe;

    .prologue
    .line 42
    sget-object v0, Lc8/gXe;->notifyListeners:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lc8/gXe;->notifyListeners:Ljava/util/Set;

    .line 45
    :cond_0
    sget-object v0, Lc8/gXe;->notifyListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method private buildMessage(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    new-instance v0, Lc8/eXe;

    invoke-direct {v0, p0, p1}, Lc8/eXe;-><init>(Lc8/gXe;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method private parseMsgByThirdPush(Landroid/content/Intent;)Ljava/lang/String;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, "result":Ljava/lang/String;
    sget-object v4, Lc8/gXe;->notifyListeners:Ljava/util/Set;

    if-eqz v4, :cond_2

    sget-object v4, Lc8/gXe;->notifyListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 128
    sget-object v4, Lc8/gXe;->notifyListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/fXe;

    .line 129
    .local v1, "listener":Lc8/fXe;
    invoke-interface {v1, p1}, Lc8/fXe;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    invoke-interface {v1}, Lc8/fXe;->getMsgSource()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/gXe;->msgSource:Ljava/lang/String;

    .line 164
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lc8/fXe;
    :cond_1
    :goto_0
    const-string/jumbo v4, "accs.BaseNotifyClickActivity"

    const-string/jumbo v5, "parseMsgByThirdPush"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "result"

    aput-object v7, v6, v10

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "msgSource"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lc8/gXe;->msgSource:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    return-object v3

    .line 136
    :cond_2
    const-string/jumbo v4, "accs.BaseNotifyClickActivity"

    const-string/jumbo v5, "no impl, try use default impl to parse intent!"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    new-instance v2, Lc8/hXe;

    invoke-direct {v2}, Lc8/hXe;-><init>()V

    .line 138
    .local v2, "parser":Lc8/fXe;
    invoke-interface {v2, p1}, Lc8/fXe;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    new-instance v2, Lc8/kXe;

    .end local v2    # "parser":Lc8/fXe;
    invoke-direct {v2}, Lc8/kXe;-><init>()V

    .line 142
    .restart local v2    # "parser":Lc8/fXe;
    invoke-interface {v2, p1}, Lc8/fXe;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 145
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 146
    new-instance v2, Lc8/jXe;

    .end local v2    # "parser":Lc8/fXe;
    invoke-direct {v2}, Lc8/jXe;-><init>()V

    .line 147
    .restart local v2    # "parser":Lc8/fXe;
    invoke-interface {v2, p1}, Lc8/fXe;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 150
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 151
    new-instance v2, Lc8/iXe;

    .end local v2    # "parser":Lc8/fXe;
    invoke-direct {v2}, Lc8/iXe;-><init>()V

    .line 152
    .restart local v2    # "parser":Lc8/fXe;
    invoke-interface {v2, p1}, Lc8/fXe;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 155
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 156
    const-string/jumbo v4, "accs"

    const-string/jumbo v5, "error"

    const-string/jumbo v6, "parse 3push error"

    invoke-static {v4, v5, v6, v8, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0

    .line 158
    :cond_6
    invoke-interface {v2}, Lc8/fXe;->getMsgSource()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/gXe;->msgSource:Ljava/lang/String;

    .line 159
    const-string/jumbo v4, "accs"

    const-string/jumbo v5, "error"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parse 3push default "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/gXe;->msgSource:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v8, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_0
.end method

.method private reportClickNotifyMsg(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 172
    :try_start_0
    const-string/jumbo v6, "id"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "messageId":Ljava/lang/String;
    const-string/jumbo v6, "message_source"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "source":Ljava/lang/String;
    const-string/jumbo v6, "report"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "report":Ljava/lang/String;
    const-string/jumbo v6, "extData"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "extData":Ljava/lang/String;
    new-instance v3, Lc8/DWp;

    invoke-direct {v3}, Lc8/DWp;-><init>()V

    .line 178
    .local v3, "msg":Lc8/DWp;
    iput-object v2, v3, Lc8/DWp;->msgIds:Ljava/lang/String;

    .line 179
    iput-object v1, v3, Lc8/DWp;->extData:Ljava/lang/String;

    .line 180
    iput-object v5, v3, Lc8/DWp;->messageSource:Ljava/lang/String;

    .line 181
    iput-object v4, v3, Lc8/DWp;->reportStr:Ljava/lang/String;

    .line 183
    const-string/jumbo v6, "8"

    iput-object v6, v3, Lc8/DWp;->msgStatus:Ljava/lang/String;

    .line 184
    const-string/jumbo v6, "accs.BaseNotifyClickActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reportClickNotifyMsg messageId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " source:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " reportStr:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lc8/DWp;->msgStatus:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v6, p0, Lc8/gXe;->notifyManager:Lc8/UWp;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Lc8/UWp;->report(Lc8/DWp;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "extData":Ljava/lang/String;
    .end local v2    # "messageId":Ljava/lang/String;
    .end local v3    # "msg":Lc8/DWp;
    .end local v4    # "report":Ljava/lang/String;
    .end local v5    # "source":Ljava/lang/String;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "exception":Ljava/lang/Exception;
    const-string/jumbo v6, "accs.BaseNotifyClickActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reportClickNotifyMsg exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const-string/jumbo v0, "accs.BaseNotifyClickActivity"

    const-string/jumbo v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lc8/gXe;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/gXe;->buildMessage(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public onMessage(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 70
    const-string/jumbo v0, "accs.BaseNotifyClickActivity"

    const-string/jumbo v1, "onNewIntent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lc8/gXe;->buildMessage(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 58
    return-void
.end method
