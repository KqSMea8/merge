.class public Lc8/sJb;
.super Ljava/lang/Object;
.source "FieldSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tJb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RuntimeSerializerInfo"
.end annotation


# instance fields
.field fieldSerializer:Lc8/DJb;

.field runtimeFieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/DJb;Ljava/lang/Class;)V
    .locals 0
    .param p1, "fieldSerializer"    # Lc8/DJb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/DJb;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lc8/sJb;->fieldSerializer:Lc8/DJb;

    .line 161
    iput-object p2, p0, Lc8/sJb;->runtimeFieldClass:Ljava/lang/Class;

    .line 162
    return-void
.end method
