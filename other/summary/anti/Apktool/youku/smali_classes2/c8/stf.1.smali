.class public Lc8/stf;
.super Ljava/lang/Object;
.source "OrangeConfigLocal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ttf;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ttf;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/ttf;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ttf;

    .prologue
    .line 43
    iput-object p1, p0, Lc8/stf;->this$0:Lc8/ttf;

    iput-object p2, p0, Lc8/stf;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lc8/stf;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lc8/Ytf;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/ttf;->access$002(Z)Z

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/ttf;->access$002(Z)Z

    goto :goto_0
.end method
