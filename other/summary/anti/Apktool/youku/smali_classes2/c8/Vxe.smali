.class public Lc8/Vxe;
.super Ljava/lang/Object;
.source "WBAgentHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zxe;->saveActivePages(Ljava/util/concurrent/CopyOnWriteArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zxe;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Zxe;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Zxe;

    .prologue
    .line 316
    iput-object p1, p0, Lc8/Vxe;->this$0:Lc8/Zxe;

    iput-object p2, p0, Lc8/Vxe;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 319
    const-string/jumbo v0, "app_logs"

    .line 320
    invoke-static {v0}, Lc8/Oxe;->getAppLogPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc8/Vxe;->val$content:Ljava/lang/String;

    const/4 v2, 0x1

    .line 319
    invoke-static {v0, v1, v2}, Lc8/Oxe;->writeToFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 322
    return-void
.end method
