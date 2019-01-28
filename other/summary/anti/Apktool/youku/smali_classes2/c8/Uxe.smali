.class public Lc8/Uxe;
.super Ljava/lang/Object;
.source "WBAgentHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zxe;->uploadAppLogs(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zxe;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/Zxe;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Zxe;

    .prologue
    .line 217
    iput-object p1, p0, Lc8/Uxe;->this$0:Lc8/Zxe;

    iput-object p2, p0, Lc8/Uxe;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lc8/Uxe;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lc8/Uxe;->this$0:Lc8/Zxe;

    invoke-static {v1}, Lc8/Zxe;->access$000(Lc8/Zxe;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Pxe;->uploadAppLogs(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    return-void
.end method
