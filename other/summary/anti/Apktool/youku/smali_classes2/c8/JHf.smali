.class public Lc8/JHf;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/OHf;->pollGetTask(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/OHf;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/OHf;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lc8/JHf;->this$0:Lc8/OHf;

    iput-object p2, p0, Lc8/JHf;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lc8/JHf;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lc8/JHf;->this$0:Lc8/OHf;

    invoke-static {v0}, Lc8/OHf;->access$200(Lc8/OHf;)Lc8/qIf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/JHf;->this$0:Lc8/OHf;

    invoke-static {v0}, Lc8/OHf;->access$200(Lc8/OHf;)Lc8/qIf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/qIf;->isStop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lc8/JHf;->this$0:Lc8/OHf;

    iget-object v1, p0, Lc8/JHf;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lc8/JHf;->val$data:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/OHf;->access$300(Lc8/OHf;Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lc8/JHf;->this$0:Lc8/OHf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/OHf;->access$202(Lc8/OHf;Lc8/qIf;)Lc8/qIf;

    goto :goto_0
.end method
