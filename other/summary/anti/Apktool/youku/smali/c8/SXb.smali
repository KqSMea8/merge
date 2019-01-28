.class public Lc8/SXb;
.super Ljava/lang/Object;
.source "AppLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/TXb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/TXb;


# direct methods
.method constructor <init>(Lc8/TXb;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lc8/SXb;->this$0:Lc8/TXb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lc8/SXb;->this$0:Lc8/TXb;

    invoke-virtual {v0}, Lc8/TXb;->hide()V

    .line 59
    return-void
.end method
