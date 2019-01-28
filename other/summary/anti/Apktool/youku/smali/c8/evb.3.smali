.class public Lc8/evb;
.super Lc8/Tcf;
.source "WXPrefetchModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fvb;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/fvb;

.field final synthetic val$command:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lc8/fvb;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lc8/fvb;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lc8/evb;->this$1:Lc8/fvb;

    iput-object p3, p0, Lc8/evb;->val$command:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lc8/Tcf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lc8/evb;->val$command:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lc8/evb;->val$command:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 141
    :cond_0
    return-void
.end method
