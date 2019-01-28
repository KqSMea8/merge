.class public Lcom/taobao/accs/data/Message$MsgResType;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/data/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgResType"
.end annotation


# static fields
.field public static final INVALID:I = -0x1

.field public static final NEED_ACK:I = 0x1

.field public static final NO_ACK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 120
    packed-switch p0, :pswitch_data_0

    .line 126
    const-string/jumbo v0, "INVALID"

    :goto_0
    return-object v0

    .line 122
    :pswitch_0
    const-string/jumbo v0, "NO_ACK"

    goto :goto_0

    .line 124
    :pswitch_1
    const-string/jumbo v0, "NEED_ACK"

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 109
    packed-switch p0, :pswitch_data_0

    .line 115
    :goto_0
    :pswitch_0
    return v0

    .line 111
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
