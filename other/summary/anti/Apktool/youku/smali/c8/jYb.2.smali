.class public Lc8/jYb;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/poplayer/trigger/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Source"
.end annotation


# static fields
.field public static final ActiveCall:I = 0x3

.field public static final Broadcast:I = 0x1

.field public static final PageSwitch:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # I

    .prologue
    .line 101
    packed-switch p0, :pswitch_data_0

    .line 110
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 103
    :pswitch_0
    const-string/jumbo v0, "Broadcast"

    goto :goto_0

    .line 105
    :pswitch_1
    const-string/jumbo v0, "PageSwitch"

    goto :goto_0

    .line 107
    :pswitch_2
    const-string/jumbo v0, "ActiveCall"

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
