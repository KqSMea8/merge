.class public Lc8/pIb;
.super Ljava/lang/Object;
.source "AlibcBasePromotionSDK.java"

# interfaces
.implements Lc8/qIb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tIb;->reportTask(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lc8/rIb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tIb;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$application:Landroid/app/Application;

.field final synthetic val$listener:Lc8/rIb;

.field final synthetic val$marketingId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/tIb;Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lc8/rIb;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lc8/pIb;->this$0:Lc8/tIb;

    iput-object p2, p0, Lc8/pIb;->val$application:Landroid/app/Application;

    iput-object p3, p0, Lc8/pIb;->val$appKey:Ljava/lang/String;

    iput-object p4, p0, Lc8/pIb;->val$marketingId:Ljava/lang/String;

    iput-object p5, p0, Lc8/pIb;->val$listener:Lc8/rIb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lc8/pIb;->val$listener:Lc8/rIb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/pIb;->val$listener:Lc8/rIb;

    invoke-interface {v0, p1, p2}, Lc8/rIb;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lc8/pIb;->this$0:Lc8/tIb;

    iget-object v1, p0, Lc8/pIb;->val$application:Landroid/app/Application;

    iget-object v2, p0, Lc8/pIb;->val$appKey:Ljava/lang/String;

    iget-object v3, p0, Lc8/pIb;->val$marketingId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lc8/tIb;->delPromotionToken(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lc8/pIb;->this$0:Lc8/tIb;

    iget-object v1, p0, Lc8/pIb;->val$application:Landroid/app/Application;

    const-string/jumbo v2, "TaskFinish"

    iget-object v3, p0, Lc8/pIb;->val$marketingId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lc8/tIb;->sendPromotionUT(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lc8/pIb;->val$listener:Lc8/rIb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/pIb;->val$listener:Lc8/rIb;

    invoke-interface {v0}, Lc8/rIb;->onSuccess()V

    .line 113
    :cond_0
    return-void
.end method
