.class public Lc8/jjg;
.super Lc8/Eig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc8/Eig;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lc8/Eig;-><init>()V

    invoke-virtual {p0, p1}, Lc8/jjg;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
