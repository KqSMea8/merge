.class public Lc8/qnf;
.super Ljava/lang/Object;
.source "AlibcFlowCustomsSDK.java"

# interfaces
.implements Lc8/pof;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/unf;->setInterceptOutgoingEnabled(ZLc8/tnf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/unf;

.field final synthetic val$listener:Lc8/tnf;


# direct methods
.method constructor <init>(Lc8/unf;Lc8/tnf;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lc8/qnf;->this$0:Lc8/unf;

    iput-object p2, p0, Lc8/qnf;->val$listener:Lc8/tnf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExternalRedirect(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    iget-object v0, p0, Lc8/qnf;->this$0:Lc8/unf;

    iget-object v0, v0, Lc8/unf;->outgoingAppProcessor:Lc8/xnf;

    iget-object v5, p0, Lc8/qnf;->val$listener:Lc8/tnf;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/xnf;->process(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lc8/tnf;)Z

    move-result v0

    return v0
.end method
