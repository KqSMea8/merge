.class public Lc8/Nng;
.super Ljava/lang/Object;
.source "AbsAntStore.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrangeUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ong;


# direct methods
.method private constructor <init>(Lc8/Ong;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lc8/Nng;->this$0:Lc8/Ong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Ong;Lc8/Mng;)V
    .locals 0
    .param p1, "x0"    # Lc8/Ong;
    .param p2, "x1"    # Lc8/Mng;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lc8/Nng;-><init>(Lc8/Ong;)V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "fromCache"    # Z

    .prologue
    .line 77
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receive orange update groupName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lc8/log;->info([Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/Nng;->this$0:Lc8/Ong;

    iget-object v1, v1, Lc8/Ong;->mAbtestConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lc8/Nng;->this$0:Lc8/Ong;

    invoke-static {v1}, Lc8/Ong;->access$000(Lc8/Ong;)V

    .line 84
    if-nez p2, :cond_0

    invoke-static {}, Lc8/Tng;->getInstance()Lc8/Sng;

    move-result-object v1

    const-string/jumbo v2, "orange"

    invoke-interface {v1, v2}, Lc8/Sng;->updateAntData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lc8/Nng;->this$0:Lc8/Ong;

    invoke-static {v1}, Lc8/Ong;->access$100(Lc8/Ong;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    iget-object v1, p0, Lc8/Nng;->this$0:Lc8/Ong;

    invoke-static {v1}, Lc8/Ong;->access$200(Lc8/Ong;)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v1, p0, Lc8/Nng;->this$0:Lc8/Ong;

    iget-object v1, v1, Lc8/Ong;->mAbtestWhitelistKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lc8/Nng;->this$0:Lc8/Ong;

    invoke-virtual {v1}, Lc8/Ong;->fetchAbtestWhiteList()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
