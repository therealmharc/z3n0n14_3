.class public Lcom/gamevil/nexus2/xml/Base64Nexus2;
.super Ljava/lang/Object;
.source "Base64Nexus2.java"


# static fields
.field static final IGNORE:I = -0x1

.field static final PAD:I = -0x2

.field static final charToValue:[I

.field private static final debug:Z = true

.field private static lineLength:I

.field static lineSeparator:Ljava/lang/String;

.field static final valueToChar:[C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/16 v5, 0x40

    const/16 v4, 0x19

    .line 178
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineSeparator:Ljava/lang/String;

    .line 276
    const v1, 0x61a80

    sput v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    .line 289
    new-array v1, v5, [C

    sput-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    .line 292
    new-array v1, v6, [I

    sput-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->charToValue:[I

    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-le v0, v4, :cond_0

    .line 306
    const/4 v0, 0x0

    :goto_1
    if-le v0, v4, :cond_1

    .line 309
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x9

    if-le v0, v1, :cond_2

    .line 311
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    const/16 v2, 0x3e

    const/16 v3, 0x2b

    aput-char v3, v1, v2

    .line 312
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    const/16 v2, 0x3f

    const/16 v3, 0x2f

    aput-char v3, v1, v2

    .line 315
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v6, :cond_3

    .line 319
    const/4 v0, 0x0

    :goto_4
    if-lt v0, v5, :cond_4

    .line 323
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->charToValue:[I

    const/16 v2, 0x3d

    const/4 v3, -0x2

    aput v3, v1, v2

    .line 45
    return-void

    .line 304
    :cond_0
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    add-int/lit8 v2, v0, 0x41

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_1
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    add-int/lit8 v2, v0, 0x1a

    add-int/lit8 v3, v0, 0x61

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    :cond_2
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    add-int/lit8 v2, v0, 0x34

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 316
    :cond_3
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->charToValue:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 320
    :cond_4
    sget-object v1, Lcom/gamevil/nexus2/xml/Base64Nexus2;->charToValue:[I

    sget-object v2, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 13
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    div-int/lit8 v10, v10, 0x4

    mul-int/lit8 v10, v10, 0x3

    new-array v0, v10, [B

    .line 195
    .local v0, "b":[B
    const/4 v4, 0x0

    .line 198
    .local v4, "cycle":I
    const/4 v3, 0x0

    .line 201
    .local v3, "combined":I
    const/4 v7, 0x0

    .line 203
    .local v7, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 204
    .local v8, "len":I
    const/4 v5, 0x0

    .line 205
    .local v5, "dummies":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v8, :cond_0

    .line 261
    if-eqz v4, :cond_2

    .line 262
    new-instance v10, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 263
    const-string v11, "Input to decode not an even multiple of 4 characters; pad with =."

    .line 262
    invoke-direct {v10, v11}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 207
    :cond_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 208
    .local v2, "c":I
    const/16 v10, 0xff

    if-gt v2, v10, :cond_1

    sget-object v10, Lcom/gamevil/nexus2/xml/Base64Nexus2;->charToValue:[I

    aget v9, v10, v2

    .line 210
    .local v9, "value":I
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 223
    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 205
    :goto_3
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 208
    .end local v9    # "value":I
    :cond_1
    const/4 v9, -0x1

    goto :goto_1

    .line 217
    .restart local v9    # "value":I
    :pswitch_1
    const/4 v9, 0x0

    .line 218
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 225
    :pswitch_2
    move v3, v9

    .line 226
    const/4 v4, 0x1

    .line 227
    goto :goto_3

    .line 230
    :pswitch_3
    shl-int/lit8 v3, v3, 0x6

    .line 231
    or-int/2addr v3, v9

    .line 232
    const/4 v4, 0x2

    .line 233
    goto :goto_3

    .line 236
    :pswitch_4
    shl-int/lit8 v3, v3, 0x6

    .line 237
    or-int/2addr v3, v9

    .line 238
    const/4 v4, 0x3

    .line 239
    goto :goto_3

    .line 242
    :pswitch_5
    shl-int/lit8 v3, v3, 0x6

    .line 243
    or-int/2addr v3, v9

    .line 249
    add-int/lit8 v10, v7, 0x2

    int-to-byte v11, v3

    aput-byte v11, v0, v10

    .line 250
    ushr-int/lit8 v3, v3, 0x8

    .line 251
    add-int/lit8 v10, v7, 0x1

    int-to-byte v11, v3

    aput-byte v11, v0, v10

    .line 252
    ushr-int/lit8 v3, v3, 0x8

    .line 253
    int-to-byte v10, v3

    aput-byte v10, v0, v7

    .line 254
    add-int/lit8 v7, v7, 0x3

    .line 255
    const/4 v4, 0x0

    goto :goto_3

    .line 265
    .end local v2    # "c":I
    .end local v9    # "value":I
    :cond_2
    sub-int/2addr v7, v5

    .line 266
    array-length v10, v0

    if-eq v10, v7, :cond_3

    .line 267
    new-array v1, v7, [B

    .line 268
    .local v1, "b2":[B
    invoke-static {v0, v12, v1, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    move-object v0, v1

    .line 271
    .end local v1    # "b2":[B
    :cond_3
    return-object v0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 223
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 14
    .param p0, "b"    # [B

    .prologue
    .line 59
    array-length v11, p0

    add-int/lit8 v11, v11, 0x2

    div-int/lit8 v11, v11, 0x3

    mul-int/lit8 v9, v11, 0x4

    .line 62
    .local v9, "outputLength":I
    sget v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    if-eqz v11, :cond_0

    .line 63
    add-int/lit8 v11, v9, -0x1

    sget v12, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    div-int/2addr v11, v12

    .line 64
    sget-object v12, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    mul-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 69
    :cond_0
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 72
    .local v10, "sb":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 75
    .local v8, "linePos":I
    array-length v11, p0

    div-int/lit8 v11, v11, 0x3

    mul-int/lit8 v7, v11, 0x3

    .line 76
    .local v7, "len":I
    array-length v11, p0

    sub-int v6, v11, v7

    .line 77
    .local v6, "leftover":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v7, :cond_2

    .line 119
    packed-switch v6, :pswitch_data_0

    .line 168
    :goto_1
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-eq v9, v11, :cond_1

    .line 170
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "oops: minor program flaw: output length mis-estimated"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "estimate:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "actual:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 83
    :cond_2
    add-int/lit8 v8, v8, 0x4

    .line 84
    sget v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    if-le v8, v11, :cond_3

    .line 85
    const/4 v8, 0x0

    .line 86
    sget v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    if-eqz v11, :cond_3

    .line 87
    sget-object v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_3
    add-int/lit8 v11, v5, 0x0

    aget-byte v11, p0, v11

    and-int/lit16 v4, v11, 0xff

    .line 95
    .local v4, "combined":I
    shl-int/lit8 v4, v4, 0x8

    .line 96
    add-int/lit8 v11, v5, 0x1

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v4, v11

    .line 97
    shl-int/lit8 v4, v4, 0x8

    .line 98
    add-int/lit8 v11, v5, 0x2

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v4, v11

    .line 102
    and-int/lit8 v3, v4, 0x3f

    .line 103
    .local v3, "c3":I
    ushr-int/lit8 v4, v4, 0x6

    .line 104
    and-int/lit8 v2, v4, 0x3f

    .line 105
    .local v2, "c2":I
    ushr-int/lit8 v4, v4, 0x6

    .line 106
    and-int/lit8 v1, v4, 0x3f

    .line 107
    .local v1, "c1":I
    ushr-int/lit8 v4, v4, 0x6

    .line 108
    and-int/lit8 v0, v4, 0x3f

    .line 112
    .local v0, "c0":I
    sget-object v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    aget-char v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    sget-object v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    aget-char v11, v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    sget-object v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    aget-char v11, v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    sget-object v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->valueToChar:[C

    aget-char v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_0

    .line 132
    .end local v0    # "c0":I
    .end local v1    # "c1":I
    .end local v2    # "c2":I
    .end local v3    # "c3":I
    .end local v4    # "combined":I
    :pswitch_0
    add-int/lit8 v8, v8, 0x4

    .line 133
    sget v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    if-le v8, v11, :cond_4

    .line 134
    const/4 v8, 0x0

    .line 135
    sget v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    if-eqz v11, :cond_4

    .line 136
    sget-object v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    :cond_4
    const/4 v11, 0x3

    new-array v11, v11, [B

    const/4 v12, 0x0

    aget-byte v13, p0, v7

    aput-byte v13, v11, v12

    invoke-static {v11}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const-string v11, "=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 151
    :pswitch_1
    add-int/lit8 v8, v8, 0x4

    .line 152
    sget v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    if-le v8, v11, :cond_5

    .line 153
    const/4 v8, 0x0

    .line 154
    sget v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    if-eqz v11, :cond_5

    .line 155
    sget-object v11, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    :cond_5
    const/4 v11, 0x3

    new-array v11, v11, [B

    const/4 v12, 0x0

    aget-byte v13, p0, v7

    aput-byte v13, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v13, v7, 0x1

    aget-byte v13, p0, v13

    aput-byte v13, v11, v12

    invoke-static {v11}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 162
    const/4 v13, 0x3

    .line 161
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    .line 348
    new-array v0, v8, [B

    fill-array-data v0, :array_0

    .line 349
    .local v0, "a":[B
    new-array v1, v8, [B

    fill-array-data v1, :array_1

    .line 350
    .local v1, "b":[B
    new-array v2, v8, [B

    .line 351
    .local v2, "c":[B
    new-array v3, v8, [B

    fill-array-data v3, :array_2

    .line 352
    .local v3, "d":[B
    const/4 v8, 0x4

    new-array v4, v8, [B

    fill-array-data v4, :array_3

    .line 353
    .local v4, "e":[B
    const/4 v8, 0x5

    new-array v5, v8, [B

    fill-array-data v5, :array_4

    .line 355
    .local v5, "f":[B
    const/4 v8, 0x6

    new-array v6, v8, [B

    fill-array-data v6, :array_5

    .line 357
    .local v6, "g":[B
    const-string v8, "AAAAAAAAAAB"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 359
    .local v7, "h":[B
    invoke-static {v0}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 360
    invoke-static {v1}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 361
    invoke-static {v2}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 362
    invoke-static {v3}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 363
    invoke-static {v4}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 364
    invoke-static {v5}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 365
    invoke-static {v6}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 366
    invoke-static {v7}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 368
    invoke-static {v0}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 369
    invoke-static {v1}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 370
    invoke-static {v2}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 371
    invoke-static {v3}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 372
    invoke-static {v4}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 373
    invoke-static {v5}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 374
    invoke-static {v6}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 375
    invoke-static {v7}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 376
    const/16 v8, 0x8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->setLineLength(I)V

    .line 377
    invoke-static {v7}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->show([B)V

    .line 379
    return-void

    .line 348
    nop

    :array_0
    .array-data 1
        -0x4t
        0xft
        -0x40t
    .end array-data

    .line 349
    :array_1
    .array-data 1
        0x3t
        -0x10t
        0x3ft
    .end array-data

    .line 351
    :array_2
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 352
    :array_3
    .array-data 1
        -0x4t
        0xft
        -0x40t
        0x1t
    .end array-data

    .line 353
    :array_4
    .array-data 1
        -0x4t
        0xft
        -0x40t
        0x1t
        0x2t
    .end array-data

    .line 355
    nop

    :array_5
    .array-data 1
        -0x4t
        0xft
        -0x40t
        0x1t
        0x2t
        0x3t
    .end array-data
.end method

.method public static setLineLength(I)V
    .locals 1
    .param p0, "length"    # I

    .prologue
    .line 285
    div-int/lit8 v0, p0, 0x4

    mul-int/lit8 v0, v0, 0x4

    sput v0, Lcom/gamevil/nexus2/xml/Base64Nexus2;->lineLength:I

    .line 286
    return-void
.end method

.method public static show([B)V
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 339
    return-void

    .line 335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
