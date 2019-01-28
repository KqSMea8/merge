.class public Lc8/cVf;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nVf;->setPreRenderMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nVf;

.field final synthetic val$isPreRenderMode:Z


# direct methods
.method constructor <init>(Lc8/nVf;Z)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lc8/cVf;->this$0:Lc8/nVf;

    iput-boolean p2, p0, Lc8/cVf;->val$isPreRenderMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lc8/cVf;->this$0:Lc8/nVf;

    iget-boolean v1, p0, Lc8/cVf;->val$isPreRenderMode:Z

    invoke-static {v0, v1}, Lc8/nVf;->access$102(Lc8/nVf;Z)Z

    .line 753
    return-void
.end method
