.class public Lc8/vz;
.super Ljava/lang/Object;
.source "ResourceIdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResInfo"
.end annotation


# instance fields
.field public resId:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput p2, p0, Lc8/vz;->resId:I

    .line 319
    iput-object p1, p0, Lc8/vz;->type:Ljava/lang/String;

    .line 320
    return-void
.end method
