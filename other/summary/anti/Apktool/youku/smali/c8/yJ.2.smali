.class public Lc8/yJ;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zJ;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zJ;


# direct methods
.method constructor <init>(Lc8/zJ;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lc8/yJ;->this$0:Lc8/zJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lc8/yJ;->this$0:Lc8/zJ;

    invoke-virtual {v0, p1}, Lc8/zJ;->onConfigUpdate(Ljava/lang/String;)V

    .line 54
    return-void
.end method
