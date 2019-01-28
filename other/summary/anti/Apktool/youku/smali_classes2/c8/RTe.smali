.class public Lc8/RTe;
.super Lc8/rTe;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/STe;->ackSettingsLater(Lc8/qUe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/STe;

.field final synthetic val$peerSettings:Lc8/qUe;


# direct methods
.method varargs constructor <init>(Lc8/STe;Ljava/lang/String;[Ljava/lang/Object;Lc8/qUe;)V
    .locals 0
    .param p1, "this$1"    # Lc8/STe;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 749
    iput-object p1, p0, Lc8/RTe;->this$1:Lc8/STe;

    iput-object p4, p0, Lc8/RTe;->val$peerSettings:Lc8/qUe;

    invoke-direct {p0, p2, p3}, Lc8/rTe;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 752
    :try_start_0
    iget-object v0, p0, Lc8/RTe;->this$1:Lc8/STe;

    iget-object v0, v0, Lc8/STe;->this$0:Lc8/TTe;

    iget-object v0, v0, Lc8/TTe;->frameWriter:Lc8/ETe;

    iget-object v1, p0, Lc8/RTe;->val$peerSettings:Lc8/qUe;

    invoke-interface {v0, v1}, Lc8/ETe;->ackSettings(Lc8/qUe;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
