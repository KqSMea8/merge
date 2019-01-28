.class public abstract Lc8/rJf;
.super Lc8/PIf;
.source "AccsConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qJf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/PIf",
        "<",
        "Lc8/qJf;",
        "[B>;"
    }
.end annotation


# static fields
.field public static final DATA_PACKAGE_MAX:I = 0x2800

.field protected static final TAG:Ljava/lang/String; = "AccsConnection"


# instance fields
.field private mNext:Lc8/inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/inq",
            "<",
            "Ljava/util/List",
            "<",
            "Lc8/RJf;",
            ">;>;"
        }
    .end annotation
.end field

.field private sender:Lc8/UJf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/UJf",
            "<",
            "Lc8/RJf;",
            ">;"
        }
    .end annotation
.end field

.field private subject:Lc8/yBq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/yBq",
            "<",
            "Lc8/RJf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 40
    invoke-direct {p0}, Lc8/PIf;-><init>()V

    .line 36
    invoke-static {}, Lc8/yBq;->create()Lc8/yBq;

    move-result-object v0

    iput-object v0, p0, Lc8/rJf;->subject:Lc8/yBq;

    .line 37
    new-instance v0, Lc8/UJf;

    invoke-direct {v0}, Lc8/UJf;-><init>()V

    iput-object v0, p0, Lc8/rJf;->sender:Lc8/UJf;

    .line 70
    new-instance v0, Lc8/pJf;

    invoke-direct {v0, p0}, Lc8/pJf;-><init>(Lc8/rJf;)V

    iput-object v0, p0, Lc8/rJf;->mNext:Lc8/inq;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lc8/rJf;->type:I

    .line 42
    iget-object v0, p0, Lc8/rJf;->sender:Lc8/UJf;

    iget-object v1, p0, Lc8/rJf;->subject:Lc8/yBq;

    invoke-virtual {v0, v1}, Lc8/UJf;->from(Lc8/Vlq;)Lc8/UJf;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lc8/UJf;->buffer(J)Lc8/UJf;

    move-result-object v0

    iget-object v1, p0, Lc8/rJf;->mNext:Lc8/inq;

    invoke-virtual {v0, v1}, Lc8/UJf;->subscribe(Lc8/inq;)V

    .line 43
    return-void
.end method


# virtual methods
.method public send(Lc8/RJf;)V
    .locals 1
    .param p1, "p"    # Lc8/RJf;

    .prologue
    .line 49
    iget-object v0, p0, Lc8/rJf;->subject:Lc8/yBq;

    invoke-virtual {v0, p1}, Lc8/yBq;->onNext(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public abstract sendData(Lc8/qJf;)V
.end method

.method public transCode(ILjava/lang/String;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "retMsg"    # Ljava/lang/String;

    .prologue
    .line 54
    const/16 v0, 0x7d0

    .line 55
    .local v0, "result":I
    sparse-switch p1, :sswitch_data_0

    .line 67
    :goto_0
    return v0

    .line 57
    :sswitch_0
    const/16 v0, -0x7530

    .line 58
    goto :goto_0

    .line 61
    :sswitch_1
    const/16 v0, -0xbbc

    .line 62
    goto :goto_0

    .line 64
    :sswitch_2
    const/16 v0, -0xbb9

    goto :goto_0

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        -0xd -> :sswitch_1
        -0xb -> :sswitch_1
        -0x9 -> :sswitch_2
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method
