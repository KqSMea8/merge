.class public Lc8/wHb;
.super Ljava/lang/Object;


# instance fields
.field public errorCode:I

.field public errorMessage:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFailureResult(ILjava/lang/String;)Lc8/wHb;
    .locals 1

    new-instance v0, Lc8/wHb;

    invoke-direct {v0}, Lc8/wHb;-><init>()V

    iput p0, v0, Lc8/wHb;->errorCode:I

    iput-object p1, v0, Lc8/wHb;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static newSuccessResult()Lc8/wHb;
    .locals 2

    new-instance v0, Lc8/wHb;

    invoke-direct {v0}, Lc8/wHb;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/wHb;->success:Z

    return-object v0
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lc8/wHb;->success:Z

    return v0
.end method
