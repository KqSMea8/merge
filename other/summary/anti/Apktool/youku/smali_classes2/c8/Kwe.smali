.class public final Lc8/Kwe;
.super Ljava/lang/Object;
.source "AccessTokenKeeper.java"

# interfaces
.implements Lc8/Exe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Lwe;->refreshToken(Ljava/lang/String;Landroid/content/Context;Lc8/Exe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lc8/Exe;


# direct methods
.method constructor <init>(Landroid/content/Context;Lc8/Exe;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lc8/Kwe;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lc8/Kwe;->val$listener:Lc8/Exe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p1}, Lc8/Owe;->parseAccessToken(Ljava/lang/String;)Lc8/Owe;

    move-result-object v0

    .line 118
    .local v0, "refreshToken":Lc8/Owe;
    iget-object v1, p0, Lc8/Kwe;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lc8/Lwe;->writeAccessToken(Landroid/content/Context;Lc8/Owe;)V

    .line 119
    iget-object v1, p0, Lc8/Kwe;->val$listener:Lc8/Exe;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lc8/Kwe;->val$listener:Lc8/Exe;

    invoke-interface {v1, p1}, Lc8/Exe;->onComplete(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 1
    .param p1, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 127
    iget-object v0, p0, Lc8/Kwe;->val$listener:Lc8/Exe;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lc8/Kwe;->val$listener:Lc8/Exe;

    invoke-interface {v0, p1}, Lc8/Exe;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 130
    :cond_0
    return-void
.end method
