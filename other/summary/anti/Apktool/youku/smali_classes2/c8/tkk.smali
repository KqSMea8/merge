.class public Lc8/tkk;
.super Ljava/lang/Object;
.source "DetailCardOrder.java"


# instance fields
.field public cardType:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lc8/tkk;->cardType:I

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/tkk;->title:Ljava/lang/String;

    .line 10
    iput p1, p0, Lc8/tkk;->cardType:I

    .line 11
    return-void
.end method
