.class public Lc8/OFb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/PFb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lc8/PFb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc8/PFb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/PFb;-><init>(Lc8/RFb;)V

    sput-object v0, Lc8/OFb;->a:Lc8/PFb;

    return-void
.end method
