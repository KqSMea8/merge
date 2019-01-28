.class public Lc8/EMg;
.super Ljava/lang/Object;
.source "ClickManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/GMg;->handleViewClick(Landroid/app/Activity;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/GMg;

.field final synthetic val$sb:Ljava/lang/StringBuilder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/GMg;Ljava/lang/StringBuilder;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lc8/GMg;

    .prologue
    .line 76
    iput-object p1, p0, Lc8/EMg;->this$0:Lc8/GMg;

    iput-object p2, p0, Lc8/EMg;->val$sb:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lc8/EMg;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 79
    const-string/jumbo v0, "ClickManager"

    iget-object v1, p0, Lc8/EMg;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/VMg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lc8/EMg;->val$view:Landroid/view/View;

    iget-object v1, p0, Lc8/EMg;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "-100"

    const-string/jumbo v3, "has no tracker data"

    invoke-static {v0, v1, v2, v3}, Lc8/IMg;->uploadErrorMsg(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lc8/EMg;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
