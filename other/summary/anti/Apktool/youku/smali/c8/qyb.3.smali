.class public Lc8/qyb;
.super Ljava/lang/Object;
.source "AliWXActivityLifecycleCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/syb;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/syb;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$currentViewF:Landroid/view/View;

.field final synthetic val$reverse:Z


# direct methods
.method constructor <init>(Lc8/syb;Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 0
    .param p1, "this$0"    # Lc8/syb;

    .prologue
    .line 69
    iput-object p1, p0, Lc8/qyb;->this$0:Lc8/syb;

    iput-object p2, p0, Lc8/qyb;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lc8/qyb;->val$currentViewF:Landroid/view/View;

    iput-boolean p4, p0, Lc8/qyb;->val$reverse:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 72
    iget-object v1, p0, Lc8/qyb;->this$0:Lc8/syb;

    iget-object v2, p0, Lc8/qyb;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lc8/qyb;->this$0:Lc8/syb;

    invoke-static {v0}, Lc8/syb;->access$000(Lc8/syb;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lc8/qyb;->val$currentViewF:Landroid/view/View;

    iget-boolean v5, p0, Lc8/qyb;->val$reverse:Z

    const-wide/16 v6, 0x1

    new-instance v8, Lc8/pyb;

    invoke-direct {v8, p0}, Lc8/pyb;-><init>(Lc8/qyb;)V

    invoke-static/range {v1 .. v8}, Lc8/syb;->access$200(Lc8/syb;Landroid/app/Activity;Landroid/view/View;Landroid/view/View;ZJLandroid/animation/Animator$AnimatorListener;)Z

    .line 91
    return-void
.end method
