.class public Lc8/rnf;
.super Ljava/lang/Object;
.source "AlibcFlowCustomsSDK.java"

# interfaces
.implements Lc8/Zmb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/unf;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/hob;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/unf;


# direct methods
.method constructor <init>(Lc8/unf;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lc8/rnf;->this$0:Lc8/unf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    iget-object v0, p0, Lc8/rnf;->this$0:Lc8/unf;

    iget-object v0, v0, Lc8/unf;->outgoingAppProcessor:Lc8/xnf;

    iget-object v1, p0, Lc8/rnf;->this$0:Lc8/unf;

    iget-object v5, v1, Lc8/unf;->appBlockedListener:Lc8/tnf;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/xnf;->process(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lc8/tnf;)Z

    move-result v6

    .line 325
    .local v6, "result":Z
    if-eqz v6, :cond_0

    .line 327
    const-string/jumbo v0, "alibcVisaChecked"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    :cond_0
    return v6
.end method
