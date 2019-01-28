.class public Lc8/HKd;
.super Ljava/lang/Object;
.source "Strategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/IKd;->process()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/IKd;


# direct methods
.method constructor <init>(Lc8/IKd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/IKd;

    .prologue
    .line 162
    .local p0, "this":Lc8/HKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy$1;"
    iput-object p1, p0, Lc8/HKd;->this$0:Lc8/IKd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    .local p0, "this":Lc8/HKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy$1;"
    iget-object v0, p0, Lc8/HKd;->this$0:Lc8/IKd;

    invoke-virtual {v0}, Lc8/IKd;->processMainThread()Z

    .line 166
    return-void
.end method
