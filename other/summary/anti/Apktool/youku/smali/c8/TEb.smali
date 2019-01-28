.class public Lc8/TEb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UEb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lc8/UEb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc8/UEb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/UEb;-><init>(Lc8/SEb;)V

    sput-object v0, Lc8/TEb;->a:Lc8/UEb;

    return-void
.end method
