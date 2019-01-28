.class public Lc8/ZWb;
.super Ljava/lang/Object;
.source "Domain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/YWb;
    }
.end annotation


# static fields
.field public static final APP:I = 0x1

.field public static final PAGE:I = 0x2

.field public static final VIEW:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # I

    .prologue
    .line 27
    packed-switch p0, :pswitch_data_0

    .line 38
    const-string/jumbo v0, "Unknow"

    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    const-string/jumbo v0, "App"

    goto :goto_0

    .line 32
    :pswitch_1
    const-string/jumbo v0, "Page"

    goto :goto_0

    .line 35
    :pswitch_2
    const-string/jumbo v0, "View"

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
