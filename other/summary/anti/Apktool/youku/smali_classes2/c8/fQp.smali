.class public Lc8/fQp;
.super Ljava/lang/Object;
.source "ISign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gQp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignCtx"
.end annotation


# instance fields
.field public authCode:Ljava/lang/String;

.field public index:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "authCode"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lc8/fQp;->index:I

    .line 22
    iput-object p2, p0, Lc8/fQp;->authCode:Ljava/lang/String;

    .line 23
    return-void
.end method
