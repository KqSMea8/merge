.class public Lc8/xD;
.super Ljava/lang/Object;
.source "WVUCWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/DD;->coreDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/DD;


# direct methods
.method constructor <init>(Lc8/DD;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lc8/xD;->this$0:Lc8/DD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Lc8/xD;->this$0:Lc8/DD;

    invoke-static {v0}, Lc8/DD;->access$701(Lc8/DD;)V

    .line 1010
    iget-object v0, p0, Lc8/xD;->this$0:Lc8/DD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/DD;->access$802(Lc8/DD;Z)Z

    .line 1011
    return-void
.end method
