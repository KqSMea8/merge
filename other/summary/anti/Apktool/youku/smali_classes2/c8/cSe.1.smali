.class public Lc8/cSe;
.super Lc8/dWp;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dSe;-><init>(Lc8/mTe;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dSe;

.field final synthetic val$snapshot:Lc8/mTe;


# direct methods
.method constructor <init>(Lc8/dSe;Lc8/uWp;Lc8/mTe;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dSe;
    .param p2, "x0"    # Lc8/uWp;

    .prologue
    .line 705
    iput-object p1, p0, Lc8/cSe;->this$0:Lc8/dSe;

    iput-object p3, p0, Lc8/cSe;->val$snapshot:Lc8/mTe;

    invoke-direct {p0, p2}, Lc8/dWp;-><init>(Lc8/uWp;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    iget-object v0, p0, Lc8/cSe;->val$snapshot:Lc8/mTe;

    invoke-virtual {v0}, Lc8/mTe;->close()V

    .line 708
    invoke-super {p0}, Lc8/dWp;->close()V

    .line 709
    return-void
.end method
