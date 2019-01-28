.class public Lc8/Gzg;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/Fzg;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "xiaomi"

    iput-object v0, p0, Lc8/Gzg;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/Gzg;->a:Ljava/lang/String;

    return-void
.end method
