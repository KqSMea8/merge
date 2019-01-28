.class public Lc8/nac;
.super Ljava/lang/Object;


# static fields
.field public static a:Lc8/lac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc8/lac;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/lac;-><init>(Lc8/mac;)V

    sput-object v0, Lc8/nac;->a:Lc8/lac;

    return-void
.end method
