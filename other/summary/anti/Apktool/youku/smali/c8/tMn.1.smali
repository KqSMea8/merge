.class public Lc8/tMn;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lc8/ZMn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KMn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KMn;


# direct methods
.method constructor <init>(Lc8/KMn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KMn;

    .prologue
    .line 1700
    iput-object p1, p0, Lc8/tMn;->this$0:Lc8/KMn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnHwDecodeError()V
    .locals 0

    .prologue
    .line 1705
    return-void
.end method

.method public onHwPlayError()V
    .locals 2

    .prologue
    .line 1709
    const-string/jumbo v0, "MediaPlayerProxy"

    const-string/jumbo v1, "onHwPlayError-->"

    invoke-static {v0, v1}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    return-void
.end method
