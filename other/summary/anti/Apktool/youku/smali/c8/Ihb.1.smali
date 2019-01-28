.class public abstract Lc8/Ihb;
.super Lc8/Ehb;
.source "TaskWithDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Ehb",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field protected activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 9
    .local p0, "this":Lc8/Ihb;, "Lcom/ali/auth/third/core/task/TaskWithDialog<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Lc8/Ehb;-><init>()V

    .line 10
    iput-object p1, p0, Lc8/Ihb;->activity:Landroid/app/Activity;

    .line 11
    return-void
.end method


# virtual methods
.method protected doFinally()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lc8/Ihb;, "Lcom/ali/auth/third/core/task/TaskWithDialog<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lc8/Ihb;, "Lcom/ali/auth/third/core/task/TaskWithDialog<TParams;TProgress;TResult;>;"
    return-void
.end method
