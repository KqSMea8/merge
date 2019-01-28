.class public final Lc8/aFd;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bFd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lc8/aFd;->a:Z

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/aFd;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lc8/aFd;->c:Z

    const/4 v0, 0x5

    iput v0, p0, Lc8/aFd;->d:I

    return-void
.end method
