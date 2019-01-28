.class public Lc8/iXe;
.super Ljava/lang/Object;
.source "DefaultMeizuMsgParseImpl.java"

# interfaces
.implements Lc8/fXe;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultMeizuMsgParseImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "meizu"

    return-object v0
.end method

.method public parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "msg":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 19
    const-string/jumbo v3, "DefaultMeizuMsgParseImpl"

    const-string/jumbo v4, "parseMsgFromIntent null"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    .line 29
    .end local v0    # "msg":Ljava/lang/String;
    .local v1, "msg":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 24
    .end local v1    # "msg":Ljava/lang/String;
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string/jumbo v3, "meizu_payload"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string/jumbo v3, "DefaultMeizuMsgParseImpl"

    const-string/jumbo v4, "parseMsgFromIntent"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "msg"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 29
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 26
    .end local v1    # "msg":Ljava/lang/String;
    .restart local v0    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 27
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "DefaultMeizuMsgParseImpl"

    const-string/jumbo v4, "parseMsgFromIntent"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
