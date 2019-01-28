.class public Lc8/xMc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yMc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TokenResult"
.end annotation


# instance fields
.field final synthetic a:Lc8/yMc;

.field public apdid:Ljava/lang/String;

.field public apdidToken:Ljava/lang/String;

.field public clientKey:Ljava/lang/String;

.field public umidToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/yMc;)V
    .locals 0

    iput-object p1, p0, Lc8/xMc;->a:Lc8/yMc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
