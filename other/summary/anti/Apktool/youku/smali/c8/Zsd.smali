.class public final Lc8/Zsd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/atd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Lc8/Zsd;
    .locals 4

    new-instance v0, Lc8/Zsd;

    invoke-direct {v0}, Lc8/Zsd;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/Zsd;->a:J

    iput p1, v0, Lc8/Zsd;->c:I

    iput-object p0, v0, Lc8/Zsd;->d:Ljava/lang/String;

    iput-object p2, v0, Lc8/Zsd;->b:Ljava/lang/String;

    iput-object p3, v0, Lc8/Zsd;->e:Ljava/lang/Exception;

    return-object v0
.end method
