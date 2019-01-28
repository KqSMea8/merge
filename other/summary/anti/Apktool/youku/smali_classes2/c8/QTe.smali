.class public Lc8/QTe;
.super Lc8/rTe;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/STe;->settings(ZLc8/qUe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/STe;


# direct methods
.method varargs constructor <init>(Lc8/STe;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lc8/STe;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 733
    iput-object p1, p0, Lc8/QTe;->this$1:Lc8/STe;

    invoke-direct {p0, p2, p3}, Lc8/rTe;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lc8/QTe;->this$1:Lc8/STe;

    iget-object v0, v0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v0}, Lc8/TTe;->access$2000(Lc8/TTe;)Lc8/OTe;

    move-result-object v0

    iget-object v1, p0, Lc8/QTe;->this$1:Lc8/STe;

    iget-object v1, v1, Lc8/STe;->this$0:Lc8/TTe;

    invoke-virtual {v0, v1}, Lc8/OTe;->onSettings(Lc8/TTe;)V

    .line 736
    return-void
.end method
