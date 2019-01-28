.class public Lc8/Xxe;
.super Ljava/util/TimerTask;
.source "WBAgentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zxe;->registerApptoAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zxe;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$eventLog:Lc8/Jxe;


# direct methods
.method constructor <init>(Lc8/Zxe;Landroid/content/Context;Ljava/lang/String;Lc8/Jxe;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Zxe;

    .prologue
    .line 396
    iput-object p1, p0, Lc8/Xxe;->this$0:Lc8/Zxe;

    iput-object p2, p0, Lc8/Xxe;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lc8/Xxe;->val$appKey:Ljava/lang/String;

    iput-object p4, p0, Lc8/Xxe;->val$eventLog:Lc8/Jxe;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 399
    iget-object v1, p0, Lc8/Xxe;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lc8/Xxe;->val$appKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lc8/Aye;->getAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "aid":Ljava/lang/String;
    iget-object v1, p0, Lc8/Xxe;->val$eventLog:Lc8/Jxe;

    invoke-virtual {v1, v0}, Lc8/Jxe;->setmAid(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lc8/Xxe;->this$0:Lc8/Zxe;

    iget-object v2, p0, Lc8/Xxe;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lc8/Xxe;->val$eventLog:Lc8/Jxe;

    invoke-virtual {v1, v2, v3}, Lc8/Zxe;->uploadAdlog(Landroid/content/Context;Lc8/Jxe;)V

    .line 402
    return-void
.end method
